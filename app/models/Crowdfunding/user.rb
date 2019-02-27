class User
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Returns an array of this user's pledges
  def pledges
    Pledge.all.select {|pledge| pledge.user = self}
  end

  # Returns an array of this user's projects
  def projects
    self.pledges.map {|pledge| pledge.project}
  end

  # Returns the user who has made the highest pledge
  def self.highest_pledge
    Pledge.all.max_by {|pledge| pledge.amount}.user
  end

  # Returns all users who have pledged to multiple projects
  def self.multi_pledger
    user_hash = {}
    Pledge.all.each do |pledge|
      user_hash[pledge.user] ||= 0
      user_hash[pledge.user] += 1
    end

    user_hash.select {|user, num_pledges| num_pledges > 1}.keys.uniq
  end

  # Returns all users who have created a project
  def self.project_creator
    Project.all.map {|project| project.user}.uniq
  end

  def self.all
    @@all
  end
end
