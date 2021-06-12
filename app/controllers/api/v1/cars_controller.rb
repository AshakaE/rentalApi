module Api
  module V1
    class CarsController < ApplicationController
      def index
        @cars = Car.all.paginate(page: params[:page], per_page: 5)
        json_response(@cars)
      end
    end
  end
end