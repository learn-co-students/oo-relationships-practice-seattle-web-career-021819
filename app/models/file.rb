# create files for your ruby classes in this directory

class Trip
  attr_accessor :guest, :listing

  @@all = []

  def initialize(guest, listing)
    @guest = guest
    @listing = listing
    @@all << self
  end

  def self.all
    @@all
  end
end



class Listing
  attr_accessor :listing_name, :city

  @@all = []

  def initialize(listing_name, city)
    @listing_name = listing_name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def guests
    self.trips.map do |trip|
      trip.guest.name
    end
  end

  def self.find_all_by_city(city_name)
    self.all.select do |listing|
      listing.city == city_name
    end
  end

  def self.most_popular
    tally = {}
    Trip.all.each do |trip|
      if tally[trip.listing] == nil
        tally[trip.listing] = 1
      else
        tally[trip.listing] += 1
      end
    end
    order_tally= tally.sort_by{|k,v| v}.reverse
    order_tally[0][0]
  end

end


class Guest
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select do |trip|
      trip.guest == self
    end
  end

  def trip_count
    self.trips.count
  end

  def self.find_by_name(guest_name)
    self.all.select do |guest|
      guest.name == guest_name
    end
  end


end
