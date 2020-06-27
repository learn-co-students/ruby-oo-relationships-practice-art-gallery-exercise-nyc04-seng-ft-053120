require_relative '../config/environment.rb'

a1 = Artist.new("John", 14)
a2 = Artist.new("Rachel", 18)
a3 = Artist.new("Rony", 19)

g1 = Gallery.new("Abstract", "NYC")
g2 = Gallery.new("Invisible", "LA")
g3 = Gallery.new("Pyramid", "LA")

a1.create_painting("The Red", 4000, g1)
a1.create_painting("The Blue", 4500, g1)
a2.create_painting("Sky", 3000, g2)
a2.create_painting("Earth", 5000, g3)
a3.create_painting("Ice", 8000, g2)

binding.pry

puts "Bob Ross rules."
