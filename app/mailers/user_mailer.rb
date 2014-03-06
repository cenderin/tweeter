class UserMailer < ActionMailer::Base
  layout 'mailer'
  default from: "blah@tweeter.com"

  def welcome(user)
    @user = user
    mail(to: @user.email, subject: "welcome to tweeter!")
  end

  def newsletter_form(user)
    @user = user
    mail(to: @user.email, subject: "Signed up for newsletter!")
  end

end
