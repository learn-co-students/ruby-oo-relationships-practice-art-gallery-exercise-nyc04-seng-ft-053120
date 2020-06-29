require_relative '../config/environment.rb'

gallery1 = Gallery.new('Rocco Gallery', 'Brooklyn')
gallery2 = Gallery.new('Caitlin Gallery', 'Long Island')
gallery3 = Gallery.new('Chris Gallery', 'San Francisco')

artist1 = Artist.new('Margot', 20)
artist2 = Artist.new('Taylor', 5)
artist3 = Artist.new('Pones', 10)

Painting.new('beautiful', 50, artist1, gallery1)
Painting.new('wonderful', 100, artist2, gallery2)
Painting.new('fantastic', 200, artist3, gallery3)

artist1.create_painting('alluring', 300, gallery1)
artist2.create_painting('goregeous', 400, gallery2)

binding.pry

puts "Bob Ross rules."
