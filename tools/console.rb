require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#lyft

cathy = Passenger.new("Cathy")
fred = Passenger.new("Fred")
seth = Passenger.new("Seth")

driver1 = Driver.new("Steph")
driver2 = Driver.new("Kip")
driver3 = Driver.new("Patty")



ride1 = Ride.new(cathy, driver1, 25.0)
ride2 = Ride.new(fred, driver2, 3.0)
ride3 = Ride.new(seth, driver3, 4.0)
ride4 = Ride.new(cathy, driver3, 95.0)













#airbnb:

#
# listing1 = Listing.new("PrettyPlace", "Seattle")
# listing2 = Listing.new("SmellyPlace", "Tacoma")
# listing3 = Listing.new("HappyHome", "Baltimore")
#
#
# tommy = Guest.new("Tommy")
# jill = Guest.new("Jill")
# cathy = Guest.new("Cathy")
#
#
# trip1 = Trip.new(cathy, listing1)
# trip2 = Trip.new(tommy, listing3)
# trip3 = Trip.new(jill, listing2)
# trip4 = Trip.new(tommy, listing1)




















Pry.start
