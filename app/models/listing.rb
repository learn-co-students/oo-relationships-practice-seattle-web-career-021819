class Listing

  attr_reader :city

  @@all = []

  def initialize(city)
    @city = city

    @@all << self
  end

  def guests
    output = []
    Trip.all.each do |trip|
      if trip.listing == self
        output << trip.guest.name
      end
    end
    output
  end

  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def trip_count
    trips.count
  end

  def self.all
    @@all
  end

  def self.find_all_by_city(city)
    Trip.all.select do |trip|
      trip.listing.city == city
    end
  end

  def self.most_popular
    self.all.max_by do |listing|
      Trip.all.select do |trip|
        trip.listing
      end.count
    end
  end

end
