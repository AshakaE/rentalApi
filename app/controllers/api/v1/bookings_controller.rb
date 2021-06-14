module Api
  module V1
    class BookingsController < ApplicationController
      skip_before_action :verify_authenticity_token, only: %i[create destroy]
      before_action :validate_admin!, only: :index

      def index
        @bookings = Booking.all.paginate(page: params[:page], per_page: 10)
        json_response(@bookings)
      end

      def create
        @booking = current_user.bookings.create!(book_params)
        json_response({message: 'Successfully booked.'})
      end

      def show
        @bookings = Booking.where(user_id: current_user)
      
        @bookings.each do |u|
          u.car_name = Car.find(u.car_id).name
          u.user_name = User.find(u.user_id).name
        end
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
          :created_by,
          :duration,
          :car_id,
          :user_id
        )
      end
    end
  end
end
