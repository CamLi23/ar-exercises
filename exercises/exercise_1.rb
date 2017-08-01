require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
b = Store.new
b.name = "Burnaby"
b.annual_revenue = 300000
b.mens_apparel = true
b.womens_apparel = true
b.save

r = Store.new
r.name = "Richmond"
r.annual_revenue = 1260000
r.mens_apparel = false
r.womens_apparel = true
r.save

g = Store.new
g.name = "Gastown"
g.annual_revenue = 1260000
g.mens_apparel = true
g.womens_apparel = false
g.save

puts Store.count