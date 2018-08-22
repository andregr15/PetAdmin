module Admin
  class ServiceSchedulesController < Fae::BaseController
    before_action :ajust_enum, only: [:create, :update]

    private

    def ajust_enum
      params[:service_schedule][:status] = params[:service_schedule][:status].to_i
    end
  end
end
