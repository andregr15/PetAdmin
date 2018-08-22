class ServiceScheduleProduct < ApplicationRecord
  belongs_to :service_schedule
  belongs_to :product
end
