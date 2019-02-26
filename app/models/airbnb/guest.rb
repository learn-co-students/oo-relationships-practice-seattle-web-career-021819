class Guest
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Returns an array of all trips a guest has made
  def trips
    Trip.all.select {|trip| trip.guest == self}.map
  end

  # Returns an array of all listings a guest has stayed at
  def listings
    self.trips.map {|trip| trip.listing}
  end

  # Returns the number of trips a guest has taken
  def trip_count
    self.trips.count
  end

  # Returns an array of all guests who have made over 1 trip
  def self.pro_traveller
    guest_hash = {}
    Trip.all.each do |trip|
      guest_hash[trip.guest] ||= 0
      guest_hash[trip.guest] += 1
    end

    guest_hash.select do |guest, num_trips|
      num_trips > 1
    end.keys
  end

  # Takes an argument of a name (as a string)
  # and returns the all guests with that name
  def self.find_all_by_name(name)
    self.all.select {|guest| guest.name == name}
  end

  def self.all
    @@all
  end
end
