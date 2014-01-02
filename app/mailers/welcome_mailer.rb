class WelcomeMailer < ActionMailer::Base
  
  default from: SystemText.text_for_key('EMAIL_SENDER_ADDRESS')
    

  def welcome_mailer(member)
    @url = 'https://onegoalrails.herokuapp.com/login'
    @member = member
    mail(to: @member.email, from: SystemText.text_for_key('EMAIL_SENDER_ADDRESS'), subject: SystemText.text_for_key('EMAIL_WELCOME_SUBJECT')   )
  end

end
