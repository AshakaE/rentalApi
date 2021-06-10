module Api
  module V1
    class CarsController < ApplicationController
      def index
        @cars = Car.paginate(page: params[:page], per_page: 10)
        json_response(@cars)
      end
    end
  end
end