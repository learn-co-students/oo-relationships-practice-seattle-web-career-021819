class Project
  attr_reader :name, :user, :pledge_goal
  @@all = []

  def initialize(name, user, pledge_goal)
    @name = name
    @user = user
    @pledge_goal = pledge_goal
    @@all << self
  end

  # Returns an array of pledges in this project
  def pledges
    Pledge.all.select {|pledge| pledge.project = self}
  end

  # Returns an array of users with pledges in this project
  def projects
    self.pledges.map {|pledge| pledge.user}
  end

  # Returns all projects which have no pledges yet
  def self.no_pledges
    projects_w_pledges = Pledge.all.map {|pledge| pledge.project}.uniq

    # Get the difference of the two arrays
    # We know there will be as many or more projects than pledges
    # since every pledge belongs to a project, but not vice versa
    @@all - projects_w_pledges
  end

  # Returns all projects which have met or exceeded their pledge goal
  def self.above_goal
    project_pledges = {}

    Pledge.all.each do |pledge|
      project_pledges[pledge.project] ||= 0
      project_pledges[pledge.project] += pledge.amount
    end

    self.all.select do |project|
      project_pledges[project] &&
      project_pledges[project] >= project.pledge_goal
    end
  end

  # Returns the project with the highest number of backers
  def self.most_backers
    project_backers = {}
    Pledge.all.each do |pledge|
      project_backers[pledge.project] ||= 0
      project_backers[pledge.project] += 1
    end

    project_backers.key(project_backers.values.max)
  end

  def self.all
    @@all
  end
end
