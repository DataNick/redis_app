class AnotherEmail < ApplicationMailer
  def default_email(recipients)
    mail(to: recipients, subject: "Goodbye!")
  end
end
