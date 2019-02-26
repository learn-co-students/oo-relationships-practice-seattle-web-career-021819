require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# # ================ AIRBNB TESTS ===================
# puts
# puts("======= AIRBNB =======")
#
# g1 = Guest.new("Brian")
# g2 = Guest.new("Reid")
# g3 = Guest.new("Kim")
# g4 = Guest.new("Njenga")
#
# l1 = Listing.new("Sea1", "Seattle")
# l2 = Listing.new("Sea2", "Seattle")
# l3 = Listing.new("Bellevue", "Bellevue")
#
# Trip.new(g1, l1)
# Trip.new(g1, l2)
# Trip.new(g1, l3)
# Trip.new(g2, l2)
# Trip.new(g3, l1)
# Trip.new(g4, l1)
# Trip.new(g4, l2)
#
# puts "Listings by City (Seattle)"
# Listing.find_all_by_city("Seattle").each {|listing| puts listing.name}
# puts
# puts "Most Popular Listing"
# puts Listing.most_popular.name
# puts
# puts "Pro Traveller"
# Guest.pro_traveller.each {|guest| puts guest.name}
#
# m1 = Movie.new("Movie 1")
# m2 = Movie.new("Movie 2")
# m3 = Movie.new("Movie 3")
# m4 = Movie.new("Movie 4")
# m5 = Movie.new("Film 1")
# m6 = Movie.new("Film 2: Electric Boogaloo")
#
# s1 = Show.new("Show 1")
# s2 = Show.new("Show 2")
# s3 = Show.new("Show 3")
# s4 = Show.new("Show 4")
# s5 = Show.new("Film 1")
# s6 = Show.new("Film 2: Electric Boogaloo")
#
# a1 = Actor.new("Actor 1")
# a2 = Actor.new("Actor 2")
# a3 = Actor.new("Actor 3")
# a4 = Actor.new("Actor 4")
#
# Character.new("Char 1", a1, m1)
# Character.new("Char 2", a2, s2)
# Character.new("Char 3", a2, m3)
# Character.new("Char 4", a2, m4)
# Character.new("Char 5", a3, s2)
# Character.new("Char 6", a4, m1)
# Character.new("Char 7", a3, s5)
# Character.new("Char 8", a4, m6)
# Character.new("Char 9", a4, s3)
# Character.new("Char 10", a1, s2)
# Character.new("Char 11", a4, s6)
#
# puts "Movie with Most Actors"
# puts Movie.most_actors.name
# puts
# puts "Shows Sharing Names w/ Movies"
# Show.on_the_big_screen.each do |show|
#   puts show.name
# end
# puts
# puts "Character With the Most Appearances"
# puts Character.most_appearances.name
# puts
# puts "Actor with Most Characters"
# puts Actor.most_characters.name
# puts
#
# ============== CROWDFUNDING TESTS =================
puts
puts("===== CROWDFUNDING =====")
u1 = User.new("User 1")
u2 = User.new("User 2")
u3 = User.new("User 3")
u4 = User.new("User 4")
u5 = User.new("User 5")

p1 = Project.new("Project 1", u1, 10000)
p2 = Project.new("Project 2", u2, 20000)
p3 = Project.new("Project 3", u4, 30000)
p4 = Project.new("Project 4", u4, 40000)
p5 = Project.new("Project 5", u5, 50000)
p6 = Project.new("Project 6", u2, 20000)
p7 = Project.new("Project 7", u5, 30000)
p8 = Project.new("Project 8", u4, 40000)

Pledge.new(p1, u2, 10000)
Pledge.new(p2, u3, 15000)
Pledge.new(p3, u4, 20000)
Pledge.new(p4, u5, 25000)
Pledge.new(p5, u1, 30000)
Pledge.new(p4, u3, 15000)
Pledge.new(p3, u2, 20000)
Pledge.new(p2, u1, 25000)
Pledge.new(p2, u4, 10000)

puts "Highest Pledge"
puts User.highest_pledge.name
puts
puts "Multi-Pledger"
User.multi_pledger.each do |user|
  puts user.name
end
puts
puts "Project Creators"
User.project_creator.each do |user|
  puts user.name
end
puts
puts "No Pledges"
Project.no_pledges.each do |project|
  puts project.name
end
puts
puts "Above Goal"
Project.above_goal.each do |project|
  puts project.name
end
puts
puts "Most Backers"
puts Project.most_backers.name

Pry.start
