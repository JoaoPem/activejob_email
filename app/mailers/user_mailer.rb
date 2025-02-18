class UserMailer < ApplicationMailer
  def event(user_id)
    @user = User.find(user_id)
    mail(to: @user.email, subject: "Reunião dos Pais #{@user.email}")
  end
end
