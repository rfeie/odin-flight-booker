# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# support for randomization

def rand_in_range(from, to)
  rand * (to - from) + from
end

def rand_int(from, to)
  rand_in_range(from, to).to_i
end

def rand_time(from, to=Time.now)
  Time.at(rand_in_range(from.to_f, to.to_f))
end


# airport: name and code

airports = Airport.create!([{name: "O'Hare International Airport", code: "ORD"}, 
						   {name: "San Francisco International Airport", code: "SFO"},
						   {name: "John F. Kennedy International Airport", code: "JFK"}])

# Flights

50.times do |n|
	to_from = airports.sample(2)
	departure_time = rand_time(6.months.from_now)
	duration = rand_int(3600, 14000)
	# departing = to_from[0]
	# arriving = 
	Flight.create!(departing_id:to_from[0].id, arriving_id:to_from[1].id, 
				   duration:duration, departure_time: departure_time)
end