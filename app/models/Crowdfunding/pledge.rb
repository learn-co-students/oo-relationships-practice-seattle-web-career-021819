class Pledge
  attr_reader :project, :user, :amount
  @@all = []

  def initialize(project, user, amount)
    @project = project
    @user = user
    @amount = amount
    @@all << self
  end

  def self.all
    @@all
  end

  def to_s
    "#{@user.name}'s $#{@amount} Pledge to #{@project.name}"
  end
end
