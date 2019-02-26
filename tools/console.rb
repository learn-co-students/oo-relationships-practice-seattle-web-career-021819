require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# ================ AIRBNB TESTS ===================
g1 = Guest.new("Brian")
g2 = Guest.new("Reid")
g3 = Guest.new("Kim")
g4 = Guest.new("Njenga")

l1 = Listing.new("Sea1", "Seattle")
l2 = Listing.new("Sea2", "Seattle")
l3 = Listing.new("Bellevue", "Bellevue")

Trip.new(g1, l1)
Trip.new(g1, l2)
Trip.new(g1, l3)
Trip.new(g2, l2)
Trip.new(g3, l1)
Trip.new(g4, l1)
Trip.new(g4, l2)

puts "Listings by City"
Listing.find_all_by_city("Seattle").each {|listing| puts listing.name}
puts
puts "Most Popular Listing"
puts Listing.most_popular.name
puts
puts "Pro Traveller"
Guest.pro_traveller.each {|guest| puts guest.name}

Pry.start
