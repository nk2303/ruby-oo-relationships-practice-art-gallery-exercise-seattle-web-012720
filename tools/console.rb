require_relative '../config/environment.rb'

a1 = Artist.new("A B", 12)
a2 = Artist.new("C B", 10)
a3 = Artist.new("D B", 18)

g1 = Gallery.new("Lo Li", "Bell")
g2 = Gallery.new("Ki Ki", "Sea")
g3 = Gallery.new("Pa Pi", "Tac")

a1.create_painting("Windy", 20, g1)
a2.create_painting("Rainy", 50, g1)
a2.create_painting("Rainy", 50, g2)
a3.create_painting("Snowy", 60, g3)




binding.pry

puts "Bob Ross rules."
