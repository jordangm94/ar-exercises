require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

# This is accessing our model, which is the Store class in lib folder. When we create new instance
# of our model we deposit the information of that instance in that DB.
# Notice how we use Store, because accessing model, not DB table stores
Burnaby = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true )
Richmond = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true )
Gastown = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false )

#Here we use the Active Records count method to display the number of instances of that STORE class, which should be 3.
puts "The number of stores is #{Store.count}"
