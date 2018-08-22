class ServiceScheduleService < ApplicationRecord
  belongs_to :service_schedule
  belongs_to :service
end
