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
class Store < ApplicationRecord::Base
  validates :name, presence: true
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, only_integer: true
  validates :annual_revenue, greater_than_or_equal_to: 0
end

class Employee < ApplicationRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, only_integer: true
  validates :hourly_rate, greater_than: 40
  validates :hourly_rate, less_than: 200
  validates_associated :store
end