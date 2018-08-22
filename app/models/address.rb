class Address < ApplicationRecord
  include Fae::BaseModelConcern
  belongs_to :client
  
  validates :street_address, :neighborhood, :city, :zip, :client,
    presence: true
  
  validates :number,
    presence: true,
    numericality: { only_integer: true, greater_than: 0 }

  def fae_display_field
    street_address
  end

  def self.for_fae_index
    order(:street_address)
  end
  
end
