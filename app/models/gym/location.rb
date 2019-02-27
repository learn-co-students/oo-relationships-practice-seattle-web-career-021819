class Location
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Returns an array of clients in this location
  def clients
    Client.all.select {|client| client.location == self}
  end

  # Returns an array of trainers in this location
  def trainers
    self.clients.map {|client| client.trainer}
  end

  # Find which location has the least clients training there
  def self.least_clients
    location_clients = {}
    Client.all.each do |client|
      location_clients[client.location] ||= 0
      location_clients[client.location] += 1
    end

    location_clients.key(location_clients.values.min)
  end

  def self.all
    @@all
  end
end
