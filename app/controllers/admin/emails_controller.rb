module Admin
  class EmailsController < Fae::BaseController
    def emails_opened
      Email.where(opened: true).count
    end

    helper_method :emails_opened
  end
end