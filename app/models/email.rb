class Email < ApplicationRecord
  include Fae::BaseModelConcern
  enum kind: { campaing: 0, service_schedule: 1}
  
  belongs_to :client
  has_secure_token

  def fae_display_field
    created_at
  end

  def self.for_fae_index
    order(:created_at)
  end

  
end
