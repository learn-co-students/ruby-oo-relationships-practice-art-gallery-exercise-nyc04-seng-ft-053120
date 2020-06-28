require_relative '../config/environment.rb'

gallery1 = Gallery.new("Modern", "NYC")
gallery2 = Gallery.new("Contemporary", "California")
gallery3 = Gallery.new("Solo", "Texas")

artist1 = Artist.new("Ben", 14)
artist2 = Artist.new("John", 10)
artist3 = Artist.new("Madeline", 23)

painting1 = Painting.new("Crazy eyes", 1_000, artist1, gallery1)
painting2 = Painting.new("Moaner Leeza", 2_000, artist2, gallery2)
painting3 = Painting.new("Apple of my Eye", 3_000, artist3, gallery3)
painting4 = Painting.new("Rainbow Trout", 4_000, artist1, gallery1)
painting5 = Painting.new("Ozark", 500, artist2, gallery1)
painting6 = Painting.new("Coffee Point", 5_000, artist3, gallery2)
painting7 = Painting.new("Spoonful", 1_000, artist1, gallery3)


binding.pry

puts "Bob Ross rules."
