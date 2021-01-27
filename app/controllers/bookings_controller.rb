class BookingsController < ApplicationController
    before_action :set_booking, only: [:show, :update, :destroy]

    def index
        @bookings = Booking.all
        render json: @bookings
    end

    def create
        booking = Booking.create(booking_params)

        if booking.errors.any?
            render json: booking.errors, status: :unprocessable_entity
        else
            render json: booking, status: 201
        end
    end

    def show
        render json: @booking
    end

    def update
        @booking.update(booking_params)

        if @booking.errors.any?
            render json: @booking.errors, status: :unprocessable_entity
        else
            render json: @booking, status: 201
        end
    end

    def destroy
        @booking.destroy
        render json: 204
    end


    private

    def booking_params
        return params.require(:booking).permit(:suburb_id, :service_id, :first_name, :last_name, :phonenumber, :email, :address, :booking_date, :notes)
    end

    def set_booking
        begin
            @booking = Booking.find(params[:id])
        rescue
            render json: {error: "Booking not found"}, status: 404
        end
    end

end
