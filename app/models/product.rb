class Product < ApplicationRecord
  include Fae::BaseModelConcern
  belongs_to :supplier, optional: true
  has_fae_image :hero_image

  def fae_display_field
    title
  end

end
