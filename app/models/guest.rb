class Guest
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def listings
    output = []
    Trip.all.each do |trip|
      if trip.guest == self
        output << trip.listing.city
      end
    end
    output
  end

  def trips
    Trip.all.select do |trip|
      trip.guest == self
    end
  end

  def trip_count
    trips.count
  end

  def self.all
    @@all
  end

  def self.pro_traveller
    self.all.select do |guest|
      guest.trip_count > 1
    end
  end

  def self.find_all_by_name(name)
    Trip.all.select do |trip|
      trip.guest.name == name
    end
  end

  end
