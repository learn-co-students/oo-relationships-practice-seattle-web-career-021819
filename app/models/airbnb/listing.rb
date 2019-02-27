class Listing
  attr_reader :name, :city
  @@all = []

  # Add name so we have a string to refer to the listing for tests
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  # Returns an array of all trips at a listing
  def trips
    Trip.all.select {|trip| trip.listing == self}
  end

  # Returns an array of all guests who have stayed at a listing
  def guests
    self.trips.map {|trip| trip.guest}
  end

  # Returns the number of trips that have been taken to that listing
  def trip_count
    self.trips.count
  end

  # Takes an argument of a city name (as a string)
  # and returns all the listings for that city
  def self.find_all_by_city(city)
    self.all.select {|listing| listing.city == city}
  end

  # Finds the listing that has had the most trips
  def self.most_popular
    listing_hash = {}
    Trip.all.each do |trip|
      listing_hash[trip.listing] ||= 0
      listing_hash[trip.listing] += 1
    end

    print "#{listing_hash.values.max} - "
    listing_hash.key(listing_hash.values.max)
  end

  def self.all
    @@all
  end
end
