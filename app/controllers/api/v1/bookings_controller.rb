module Api
  module V1
    class BookingsController < ApplicationController
      skip_before_action :verify_authenticity_token, only: %i[create destroy]
      before_action :validate_admin!, only: :index

      def index
        @bookings = Booking.all.paginate(page: params[:page], per_page: 10)
        other_params(@bookings)
        json_response(@bookings)
      end

      def create
        @booking = current_user.bookings.create!(book_params)
        json_response({message: 'Successfully booked.'})
      end

      def show
        @bookings = Booking.where(userId: current_user.id)
        other_params(@bookings)
        json_response(@bookings)
      end

      def update
        @booking = Booking.find(params[:id])
        @booking.update(book_params)
        json_response({message: "#{@booking.name} updated successfully"})
      end

      def destroy
        @booking = Booking.find(params[:id]).destroy
        json_response({message: "#{@booking.name} deleted successfully"})
      end

      private 

      def book_params
        params.permit(
          :name,
          :date,
          :price,
          :createdBy,
          :duration,
          :carId,
          :userId
        )
      end
    end
  end
end
