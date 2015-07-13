class FlightsController < ApplicationController
	def index
		@airports = Airport.all
		@flights = Flight.all.order(:departure_time)
		if params[:search]
			departure_date = Date.parse(params[:search][:departure_time])
			@found_flights = Flight.where(departing_id: params[:search][:departing_id],
										  arriving_id: params[:search][:arriving_id],
										  departure_time: departure_date..departure_date.end_of_day )
			@booking = Booking.new
			@passengers = params[:search][:number_of_passengers]
		end

	end

	def create
		
	end

	def new
		
	end



end
