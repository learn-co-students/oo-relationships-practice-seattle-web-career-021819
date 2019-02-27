class Client
  attr_reader :name, :location, :trainer
  @@all = []

  def initialize(name, location, trainer)
    @name = name
    @location = location
    @trainer = trainer
    @@all << self
  end

  # Takes a trainer as argument and assign it to the client
  def assign_trainer(trainer)
    @trainer = trainer
  end

  def self.all
    @@all
  end
end
