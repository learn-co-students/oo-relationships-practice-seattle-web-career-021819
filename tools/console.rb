require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end





listing1 = Listing.new("PrettyPlace", "Seattle")
listing2 = Listing.new("SmellyPlace", "Tacoma")
listing3 = Listing.new("HappyHome", "Baltimore")


tommy = Guest.new("Tommy")
jill = Guest.new("Jill")
cathy = Guest.new("Cathy")


trip1 = Trip.new(cathy, listing1)
trip2 = Trip.new(tommy, listing3)
trip3 = Trip.new(jill, listing2)
trip4 = Trip.new(tommy, listing1)




















Pry.start
