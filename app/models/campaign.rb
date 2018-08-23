class Campaign < ApplicationRecord
  include Fae::BaseModelConcern
  has_many :campaign_clients
  has_many :clients, through: :campaign_clients, dependent: :destroy

  validates :title, :body, presence: true  

  after_save :schedule_emails

  def fae_display_field
    title
  end

  private

  def schedule_emails
    CampaignJob.perform_later self
  end

end
