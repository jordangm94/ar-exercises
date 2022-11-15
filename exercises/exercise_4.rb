require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

### Exercise 4: Loading a subset of stores
puts "Exercise 4"
puts "----------"

# Your code goes here ...

# 1. Borrowing and modifying the code from Exercise one, create 3 more stores:
Surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true )
Whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false )
Yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true )

# 2. Using the `where` class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable `@mens_stores`.
@mens_stores = Store.where(mens_apparel: true)

# 3. Loop through each of these stores and output their name and annual revenue on each line.

@mens_stores.each {| male_stores |
  puts "#{male_stores.name} makes an annual revenue of #{male_stores.annual_revenue}"
}


# 4. Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.

@womens_stores = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)

@womens_stores.each {| women_stores |
  puts "#{women_stores.name} makes an annual revenue of #{women_stores.annual_revenue}"
}
