class BuddyAssignedMailer < ActionMailer::Base

  default from: ENV['EMAIL_SENDER_ADDRESS']
  
  def buddy_assigned_mailer(member)
    @url = 'https://onegoalrails.herokuapp.com/login'
    @member = member
    @text = SystemText.text_for_key('EMAIL_BUDDY_ASSIGNED_TEXT') 
    @text.gsub!(/@member.first_name/,@member.buddy.first_name)
    @text.gsub!(/@member.last_name/,@member.buddy.last_name)
    @text.gsub!(/@member.email/,@member.buddy.email)
    @text.gsub!(/@member.phone_number/, @member.buddy.phone_number)
    @text.gsub!(/@webmaster/,SystemText.text_for_key('WEBMASTER_EMAIL_ADDRESS'))


    mail(to: @member.email, from: ENV['EMAIL_SENDER_ADDRESS'], subject: SystemText.text_for_key('EMAIL_BUDDY_ASSIGNED_SUBJECT')   )
  end
end