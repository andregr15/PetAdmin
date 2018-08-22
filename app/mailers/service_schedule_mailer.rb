class ServiceScheduleMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.service_schedule_mailer.schedule.subject
  #
  def schedule(service_schedule)
    @schedule = service_schedule
    mail to: @schedule.client.email, subject: "Your service was scheduled to #{@schedule.date} - Pet Admin"
  end
end
