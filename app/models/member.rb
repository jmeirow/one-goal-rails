

class Member < ActiveRecord::Base

    #after_create :send_welcome_email

    after_update :check_for_updated_buddy_request

    validates_presence_of :first_name, :last_name, :phone_number, :club_name 

    validate :buddy_selection 



    def self.for_user user 
      id = (user.class == User) ? user.id : user
      member = Goal.find_by_user_id(id)
      goal.nil? ? Member.new : goal
    end


    def self.entered_for_user? user 
      id = (user.class == User) ? user.id : user
      Member.where("user_id = ?", id).length > 0 
    end

    def self.new_with_email(email)
      mbr = Member.new
      mbr.email = email 
      mbr
    end


    def buddy_selection 
      unless ['y','n'].include? self[:wants_a_buddy]
        errors.add :choose_a_buddy, ":  Must select 'Yes, match me with a buddy' or 'No, I will use my own buddy'.  " 
      end
    end


    def next_available_buddy

      sql = "
        select * 
        from members 
        where id <> #{self.id} and id not in (
          select member_id_1 as member_id from buddies
          union
          select member_id_2 as member_id from buddies
          )
         LIMIT 1
        "

      x = ActiveRecord::Base.connection.execute(sql).first
      if x.nil?
        -1
      else
        x['id']
      end
    end




    def do_buddy_assignment


      return if buddy_not_wanted 

      buddy = next_available_buddy
      
      if buddy == -1
        send_buddy_waiting_email
      else
        pair_id = assign_buddy id, buddy
        send_buddy_assigned_emails pair_id
      end
    end


    def send_buddy_assigned_emails pair_id 
      buddy = Buddy.find(pair_id)
      mbr1 = Member.find(buddy.member_id_1)
      mbr2 = Member.find(buddy.member_id_2)
      send_buddy_assigned_email mbr1 
      send_buddy_assigned_email mbr2 

    end


    def assign_buddy id, buddy_id
      buddy = Buddy.new 
      buddy.member_id_1 = id
      buddy.member_id_2 = buddy_id 
      buddy.save 
      buddy.id 
    end


    def buddy_not_wanted

      wants_a_buddy == 'n'
    end
    

    def check_for_updated_buddy_request
      if self.wants_a_buddy_changed? && wants_a_buddy == 'y' && Buddy.where("member_id_1 = ?", id).count == 0 && Buddy.where("member_id_2 = ?", id).count == 0
        do_buddy_assignment
      end

    end 

    #
    #
    #
    #
    #
    #
    #
    #  Sending Email methodss 
    #
    #
    #
    #
    #
    #
    #



    def send_welcome_email

      WelcomeMailer.welcome_mailer(self).deliver
    end


    def send_buddy_waiting_email 

      BuddyWaitingMailer.buddy_waiting_mailer(self).deliver
    end


    def send_buddy_assigned_email member

      BuddyAssignedMailer.buddy_assigned_mailer(member).deliver
    end



    #
    #
    #
    #
    #
    #
    #
    #  Additional 'Member' properties 
    #
    #
    #
    #
    #
    #
    #


    def buddy

      row =    Buddy.where("member_id_1 = ? or member_id_2 = ?", id,id).first
      @buddy = Member.where("id in (?)",  [row.member_id_1, row.member_id_2] - [id]).first 
      @buddy
    end


    def email
      @user ||= User.find(self.user_id)
      @user.email 
    end

    def username
      @user ||= User.find(self.user_id)
      @user.username 
    end




end
