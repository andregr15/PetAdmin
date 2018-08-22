# Preview all emails at http://localhost:3000/rails/mailers/service_schedule_mailer
class ServiceScheduleMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/service_schedule_mailer/schedule
  def schedule
    ServiceScheduleMailer.schedule
  end

end
