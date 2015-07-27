class PassengerMailer < ApplicationMailer
default from: 'booking@odinbooking.com'

	def thank_you_email(booking)
		@booking = booking
		@passengers = booking.passengers
		emails = @passengers.map { |passenger| passenger.email  }
		mail(to: emails, subject: "Your Booking is Confirmed!")
	end


end
