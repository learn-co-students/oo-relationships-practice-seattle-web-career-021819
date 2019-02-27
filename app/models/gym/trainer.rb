class Trainer
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Find which trainer has the most clients
  def self.most_clients
    trainer_clients = {}
    Client.all.each do |client|
      trainer_clients[client.trainer] ||= 0
      trainer_clients[client.trainer] += 1
    end

    trainer_clients.key(trainer_clients.values.max)
  end

  def self.all
    @@all
  end
end
