require 'mailgun'
class UserMailer < ApplicationMailer

  def send_test_email
    mail(to: "zas0923@gmail.com", subject: "Test Email From Gridiron")
  end
end
