require_relative '../config/environment.rb'


# Test Data

a1 = Artist.new("John", 8)
a2 = Artist.new("Tina", 15)
a3 = Artist.new("Nico", 39)

g1 = Gallery.new("Tate", "London")
g2 = Gallery.new("Louvre", "Paris")
g3 = Gallery.new("National", "Berlin")

p1 = Painting.new("Old Man and The Sea", 200, a2, g1)
p2 = Painting.new("Life", 500, a2, g2)
p3 = Painting.new("Life Eternal", 400, a1, g1)
p4 = Painting.new("Animals", 50, a3, g3)
p5 = Painting.new("Fruit Bowl", 800, a2, g1)

binding.pry

puts "Bob Ross rules."
