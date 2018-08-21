class Campaign < ApplicationRecord
  include Fae::BaseModelConcern
  has_many :campaign_clients
  has_many :clients, through: :campaing_clients

  validates :title, :body, :clients, presence: true  

  def fae_display_field
    title
  end

end
