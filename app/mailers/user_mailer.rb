class UserMailer < ActionMailer::Base
  layout 'mailer'
  default from: "blah@exadde.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user
    mail(to: @user.email, subject: "welcome to tweeter!")
  end
end