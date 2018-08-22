class ServiceSchedule < ApplicationRecord
  include Fae::BaseModelConcern
  enum status: { open: 0, finished: 1}
  
  belongs_to :client

  has_many :service_schedule_services
  has_many :services, through: :service_schedule_services, dependent: :destroy

  has_many :service_schedule_products
  has_many :products, through: :service_schedule_products, dependent: :destroy

  validates :date, :description, :client,
    :status, presence: true

  def fae_display_field
    date
  end

  def self.for_fae_index
    order(:date)
  end
  
end
