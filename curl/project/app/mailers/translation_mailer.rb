class TranslationMailer < ApplicationMailer
  def notification_email(email)
    mail(to: email, subject: 'Welcome to My Awesome Site')
  end
end
