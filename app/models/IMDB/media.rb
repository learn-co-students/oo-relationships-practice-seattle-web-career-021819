class Media
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Returns all the characters in this type of media
  def characters
    Character.all.select {|character| character.media == self}
  end

  # Returns all the actors in this type of media
  def actors
    self.characters.map {|character| character.media}
  end

  def self.all
    @@all
  end
end
