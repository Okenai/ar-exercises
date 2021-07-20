require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "count before #{Store.count()}"

# Your code goes here ...
stores = Store.create([
  {name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true}, 
  {name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false},
  {name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true}
])

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each {|each| puts "name: #{each.name} and revenue: #{each.annual_revenue}"} 
@womens_stores = Store.where("womens_apparel = ? AND annual_revenue < ? ", true, 1000000)

puts "count after #{Store.count()}"