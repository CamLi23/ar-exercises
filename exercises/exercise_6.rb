require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Butt", last_name: "Face", hourly_rate: 10)
@store1.employees.create(first_name: "Carmen", last_name: "Electra", hourly_rate: 15)
@store2.employees.create(first_name: "Hulk", last_name: "Hogan", hourly_rate: 12)
@store2.employees.create(first_name: "Sanjana", last_name: "Virani", hourly_rate: 70)
