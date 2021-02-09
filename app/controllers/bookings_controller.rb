class BookingsController < ApplicationController
    before_action :authenticate_user, except: [:create] # Application only allows for a user signed in to access all CRUD functions
    before_action :set_booking, only: [:show, :update, :destroy]

    def index
        @bookings = Booking.all
        render json: @bookings
    end

    def create
        # To create a new booking - accessible by both user logged in and a public user
        booking = Booking.create(booking_params)

        # Checking if creation of the booking is successful. If successful, returns a 201 OK status along with booking details
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
            render json: @booking, status: 204
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

    # Private method to retrieve bookings prior to running show/update/delete functions so ID is available for these when requested by user
    def set_booking
        begin
            @booking = Booking.find(params[:id])
        rescue
            render json: {error: "Booking not found"}, status: 404
        end
    end

end
