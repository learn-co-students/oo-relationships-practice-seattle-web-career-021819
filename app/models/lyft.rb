class Ride
  attr_accessor :passenger, :driver, :distance

  @@all = []

  def initialize(passenger, driver, distance)
    @passenger = passenger
    @driver = driver
    @distance = distance
    @@all << self
  end

  def self.all
    @@all
  end


  def self.average_distance
    total = 0
    self.all.each do |ride|
      total += ride.distance
    end
    total / self.all.count
  end
end



class Passenger
  attr_accessor :passenger_name

  @@all = []

  def initialize(passenger_name)
    @passenger_name = passenger_name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select do |ride|
      ride.passenger == self
    end
  end

  def drivers
    self.rides.map do |ride|
      ride.driver
    end
  end

  def total_distance
    array = self.rides.map do |ride|
      ride.distance
    end
    array.inject(0, :+)
  end

  def self.premium_members
    self.all.select do |passenger|
      passenger.total_distance > 100.0
    end
  end




end



class Driver
  attr_accessor :driver_name

  @@all = []

  def initialize(driver_name)
    @driver_name = driver_name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select do |ride|
      ride.driver == self
    end
  end

  def passengers
    self.rides.map do |ride|
      ride.passenger
    end
  end

  def self.mileage_cap(distance)
    long_rides = Ride.all.select do |ride|
      ride.distance > distance
    end
      long_rides.select do |ride|
       ride.driver
    end
  end
end
