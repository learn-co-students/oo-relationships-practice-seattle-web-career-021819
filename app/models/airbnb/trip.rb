class Trip
  attr_reader :listing, :guest
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
