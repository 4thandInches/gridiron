require 'mailgun'
class UserMailer < ApplicationMailer

  def send_welcome_email
    mail(to: "ZAS0923@gmail.com", subject: "Test Email From Gridiron")

  end
end
