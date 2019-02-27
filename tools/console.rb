require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

  seattle =Listing.new("Seattle")
  new_york = Listing.new("New York")
  san_fran = Listing.new("San Fransisco")

  albert = Guest.new("Albert")
  peter = Guest.new("Peter")
  pepe = Guest.new("Pepe")

  Trip.new(albert, seattle)
  Trip.new(peter, new_york)
  Trip.new(pepe, san_fran)
  Trip.new(albert, san_fran)
  Trip.new(peter, seattle)
  Trip.new(pepe, new_york)
  Trip.new(pepe, seattle)


Pry.start
