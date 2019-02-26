class Movie < Media
  # Returns the movie which has the most actors in it
  def self.most_actors
    self.all.max_by {|movie| movie.actors.count}
  end

  def self.all
    @@all
  end
end
