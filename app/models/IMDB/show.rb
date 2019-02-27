class Show < Media
  # Returns all the characters in this show
  def characters
    Character.all.select {|character| character.media == self}
  end

  # Returns all the actors in this show
  def actors
    self.characters.map {|character| character.actor}
  end

  # Returns TV shows that share the same name as a movie
  def self.on_the_big_screen
    media = Character.all.map {|character| character.media}
    media_hash = {}
    media.each do |media|
      media_hash[media] ||= 0
      media_hash[media] += 1
    end

    media_hash.select {|media, count| count > 1 && media.is_a?(Show)}.keys
  end

  def self.all
    @@all
  end
end
