class Actor
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Returns which actor has the most different characters played
  def self.most_characters
    actor_hash = {}
    Character.all.each do |character|
      actor_hash[character.actor] ||= 0
      actor_hash[character.actor] += 1
    end

    actor_hash.key(actor_hash.values.max)
  end

  def self.all
    @@all
  end
end
