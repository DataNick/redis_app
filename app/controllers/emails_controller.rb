class EmailsController < ApplicationController
  def index
  end

  def standard
    SendMail.default_email(recipients).deliver
    AnotherMail.default_email(recipients).deliver

    redirect_to emails_path, notice: "Sent email (standard)."
  end

  def delayed
    SendMailWorker.perform_async("SendEmail", recipients)
    AnotherMailWorker.perform_async("AnotherEmail", recipients)

    redirect_to emails_path, notice: "Sent email (delayed)."
  end

  private

  def recipients
    ["nmhalt@gmail.com", "cricket1fast@gmail.com"]
  end
end
