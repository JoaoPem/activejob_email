class EventJob < ApplicationJob
  queue_as :mailers

  def perform
    User.all.each do |user|
      SendEventJob.perform_later(user.id)
    end
  end
end
