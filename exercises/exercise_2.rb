require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"


# Your code goes here ...
store1 = Store.find_by(id: 1)
@store1 = store1
store2 = Store.where(id: 2)
@store2 = store2

puts "store 1 before: #{@store1.name}" 

@store1.name = "First"
puts "store 1 after: #{@store1.name}" 