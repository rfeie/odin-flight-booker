class Flight < ActiveRecord::Base
	belongs_to :from_airport, :foreign_key => :departing_id, :class_name => "Airport"
	belongs_to :to_airport, :foreign_key => :arriving_id, :class_name => "Airport"
	has_many :bookings
	has_many :passengers, :through => :bookings
	
		def departure_time_formatted
		    self.departure_time.strftime("%m/%d/%Y")
	 	end
	 	
end
