require 'mailgun'
class UserMailer < ApplicationMailer

  def send_test_email
    mail(to: "dadkisso@live.com", subject: "Test Email From Gridiron")
  end
end
