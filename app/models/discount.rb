class Discount < ApplicationRecord
  include Fae::BaseModelConcern
  enum kind: { value: 0, percentage: 1 }

  validates :title, :value, 
    uniqueness: true,
    presence: true

  def fae_display_field
    title
  end

end
