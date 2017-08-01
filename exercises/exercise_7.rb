require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  validates :name, presence: true
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality:{ greater_than: 0}
end

class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {greater_than: 40, less_than: 200}
  validates_associated :store
end

puts "Enter a store location"

@store = gets.chomp

new_store = Store.new
new_store.name = @store
new_store.save

if !new_store.valid?
  p new_store.errors.messages
end
