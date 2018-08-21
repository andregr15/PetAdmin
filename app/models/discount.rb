class Discount < ApplicationRecord
  include Fae::BaseModelConcern
  validates :title, :value, 
    uniqueness: true,
    presence: true

  def fae_display_field
    title
  end

end
