class ServiceScheduleMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.service_schedule_mailer.schedule.subject
  #
  def schedule(service_schedule)
    @schedule = service_schedule
    @title = "Your service was scheduled to #{@schedule.date} - Pet Admin"
    @body = '<h1>Greetings <%= @schedule.client.name %></h1>

    <p>
      Your service<%= " #{@schedule.description} " %>was schedule to <%= @schedule.date %>!
    </p>'

    Email.create(client: @schedule.client, subject: @title, body: @body, opened: false, kind: 1)
    @token = Email.last.token
    mail to: @schedule.client.email, subject: @title
  end
end
