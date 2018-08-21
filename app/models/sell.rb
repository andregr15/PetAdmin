class Sell < ApplicationRecord
  include Fae::BaseModelConcern
  
  has_many :sell_products
  has_many :products, through: :sell_products

  has_many :sell_services
  has_many :services, through: :sell_services

  belongs_to :discount, optional: true
  belongs_to :client

  enum status: { finished: 0, canceled: 1 }
  validates :client, presence: true

  before_save :set_total
  
  def fae_display_field
    id
  end

  def self.for_fae_index
    order(:id)
  end

  private

  def set_total
    total = 0
    self.products.each { |product| total += product.price }
    self.services.each { |service| total += service.price }

    if self.discount.present?
      total -= self.discount.value
    end
    
    total = total > 0 ? total : 0
    self.total = total
  end
end
