

class BuddyAssignedMailer < ActionMailer::Base

  default from: ENV['EMAIL_SENDER_ADDRESS']
  
  def buddy_assigned_mailer(member, buddy, txt )
    @url = 'https://onegoalrails.herokuapp.com/login'
    @member = member.clone
    @buddy = buddy.clone
    @text = txt.clone


    @text.gsub!(/@buddy.first_name/,@buddy.first_name)
    @text.gsub!(/@buddy.last_name/,@buddy.last_name)
    @text.gsub!(/@buddy.email/,@buddy.email)
    @text.gsub!(/@buddy.phone_number/, @buddy.phone_number)
    @text.gsub!(/@webmaster/,SystemText.text_for_key('WEBMASTER_EMAIL_ADDRESS'))

    mail(to: @member.email, from: ENV['EMAIL_SENDER_ADDRESS'], subject: SystemText.text_for_key('EMAIL_BUDDY_ASSIGNED_SUBJECT')   )
  end
end