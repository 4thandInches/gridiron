require 'mailgun'
class UserMailer < ApplicationMailer

  def send_test_email
    mail(to: "zas0923@gmail.com", subject: "Welcome to Gridiron Coach!")
  end

  def welcome_email(user)
    @user = user
    @url  = 'https://grid-iron.herokuapp.com/'
    mail(to: @user.email, subject: "Welcome to Gridiron Coach!")
  end

end
