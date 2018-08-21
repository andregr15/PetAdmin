module Admin
  class SellsController < Fae::BaseController
    before_action :ajust_enum, only: [:create, :update]

    private

    def ajust_enum
      params[:sell][:status] = params[:sell][:status].to_i
    end
  end
end
