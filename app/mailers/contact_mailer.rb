class ContactMailer < ActionMailer::Base
  default to: "woven1web@yahoo.com"
  
  def contact_email(name, email, message)
    @name = name
    @email = email
    @message = message

  
  mail(from: email, subject: "Patty's Articles Contact Form Message")
  end
end