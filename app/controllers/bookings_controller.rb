class BookingsController < ApplicationController
	def new
		@flight = Flight.find_by(id: params[:booking][:flight])
		@booking = @flight.bookings.build(num_of_passengers: params[:passengers])
		@passengers = []
		@booking.num_of_passengers.times {@passengers << Passenger.new()}
	end

	def create
		@booking = Booking.new(booking_params)
		if @booking.save
			redirect_to booking_path(@booking)
		else
			render 'new'
		end

	end

	def show
		@booking = Booking.find_by(id: params[:id])
	end
	private

	def booking_params
		params.require(:booking).permit(:num_of_passengers, :flight_id, :name,  passengers_attributes:[:name, :email])
	end
end
