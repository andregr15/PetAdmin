class Client < ApplicationRecord
  include Fae::BaseModelConcern

  has_many :campaign_clients
  has_many :campaings, through: :campaing_clients, dependent: :destroy
  has_one :address, dependent: :destroy

  accepts_nested_attributes_for :address, allow_destroy: true

  validates :phone, presence: true
  validates :email,
    uniqueness: true,
    presence: true,
    format: {
      with: Fae.validation_helpers.email_regex,
      message: 'You need use a valid and unique email'
    }

  def fae_display_field
    name
  end

end
