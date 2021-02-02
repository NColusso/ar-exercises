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

@new_employee = @store2.employees.create(first_name: "Jack", hourly_rate: 1000)
@new_employee.validate(@new_employee)
@new_employee2 = @store2.employees.create(first_name: "Jack", last_name: "Frost", hourly_rate: 100)
@new_employee2.validate(@new_employee2)


@delta = Store.new
@delta.name = "Delta"
@delta.annual_revenue = 150000
@delta.mens_apparel = false
@delta.womens_apparel = true

@delta.save
@delta.validate(@delta)

puts "Please enter name of new store: "

new_store_name = gets.chomp


@new_store = Store.new
@new_store.name = new_store_name


@new_store.save
@new_store.validate(@new_store)