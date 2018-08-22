class Sell < ApplicationRecord
  include Fae::BaseModelConcern
  
  has_many :sell_products
  has_many :products, through: :sell_products, dependent: :destroy

  has_many :sell_services
  has_many :services, through: :sell_services, dependent: :destroy

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
      if self.discount.kind.to_i == 0
        total -= self.discount.value
      else
        total -= total * self.discount.value / 100
      end

    end
    
    total = total > 0 ? total : 0
    self.total = total
  end
end
