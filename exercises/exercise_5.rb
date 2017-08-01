require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@revenue_sum = Store.all
@sum_arr = []

@revenue_sum.each do |store|
  @sum_arr << store.annual_revenue
end

@womens_stores = Store.where("annual_revenue >= ?", 1000000).count

@sum = @sum_arr.sum
p @sum
@avg_revenue = @sum_arr.inject{ |sum, el| sum + el } / @sum_arr.size
p @avg_revenue

p @womens_stores



