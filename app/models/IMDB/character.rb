class Character
  attr_reader :name, :actor, :media
  @@all = []

  def initialize(name, actor, media)
    @name = name
    @actor = actor
    @media = media
    @@all << self
  end

  # Returns which character of film/television
  # appears in the most films or tv shows
  def self.most_appearances
    character_hash = {}
    self.all.each do |character|
      character_hash[character] ||= 0
      character_hash[character] += 1
    end

    character_hash.key(character_hash.values.max)
  end

  def self.all
    @@all
  end
end
