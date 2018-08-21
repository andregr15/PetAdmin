class SellProduct < ApplicationRecord
  belongs_to :sell
  belongs_to :product
end
