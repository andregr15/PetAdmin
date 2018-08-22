module Admin
  class DiscountsController < Fae::BaseController
    before_action :ajust_enum, only: [:create, :update]

    private

    def ajust_enum
      params[:discount][:kind] = params[:discount][:kind].to_i
    end
  end
end
