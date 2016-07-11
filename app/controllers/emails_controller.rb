class EmailsController < ApplicationController
  def index
  end

  def standard
    SendMail.default_email(recipients).deliver
    AnotherMail.default_email(recipients).deliver
  end

  def delayed
  end

  private

  def recipients
    ["nmhalt@gmail.com", "cricket1fast@gmail.com"]
  end
end
