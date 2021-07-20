require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue = Store.sum(:annual_revenue)
puts "total revenue is #{@total_revenue}"
@average_revenue = @total_revenue/Store.count
puts "average revenue is #{@average_revenue}"
@profitable_stores = Store.where("annual_revenue > ?", 1000000).count
puts "there are #{@profitable_stores} profitable stores"