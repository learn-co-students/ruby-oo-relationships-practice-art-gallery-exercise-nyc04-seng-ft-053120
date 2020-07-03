require_relative '../config/environment.rb'

a1 = Artist.new("Sleepyfoot", 3)
a2 = Artist.new("Dubuffet", 50)
a3 = Artist.new("Picasso", 38)
a4 = Artist.new("Casteel", 10)

g1 = Gallery.new("Gagosian", "NYC")
g2 = Gallery.new("H_Gallery", "LA")
g3 = Gallery.new("Louvre", "Paris")
g4 = Gallery.new("The Hole", "NYC")

p1 = Painting.new("Composition", 1000, a1, g1)
p2 = Painting.new("CooCoo Bazaar", 3000, a2, g2)
p3 = Painting.new("Le Mademoiselle de l'avignon", 6000, a1, g2)
p4 = Painting.new("Mom", 4000, a3, g3)


binding.pry

puts "Bob Ross rules."
