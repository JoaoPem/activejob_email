class SendEventJob < ApplicationJob
  queue_as :mailers

  def perform(user_id)
    UserMailer.event(user_id).deliver_now
  end
end
