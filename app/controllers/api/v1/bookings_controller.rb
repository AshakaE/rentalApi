module Api
  module V1
    class BookingsController < ApplicationController
      skip_before_action :verify_authenticity_token, only: :create

      def index
        @bookings = Booking.all.paginate(page: params[:page], per_page: 10)
        json_response(@bookings)
      end

      def create
        @booking = current_user.bookings.create!(book_params)
        json_response({message: 'Successfully booked.'})
      end

      private 

      def book_params
        params.permit(
          :name,
          :date,
          :created_by,
          :duration,
          :car_id,
          :user_id
        )
      end
    end
  end
end
