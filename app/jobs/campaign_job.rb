class CampaignJob < ApplicationJob
  queue_as :emails

  def perform(campaign)
    Client.all.each do |client|
      CampaignClient.create(campaign: campaign, client: client)
      MarketingMailer.campaign(client, campaign.title, campaign.body).deliver_now
    end
  end
end
