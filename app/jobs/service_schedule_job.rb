class ServiceScheduleJob < ApplicationJob
  queue_as :schedule_emails

  def perform(service_schedule)
    # Do something later
    ServiceScheduleMailer.schedule(service_schedule).deliver_now
  end
end
