require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts 'Exercise 7'
puts '----------'

# Your code goes here ...

store_name = gets.chomp

error_messages = lambda { |message|
  puts message
}

@new_store = Store.create(
  name: store_name
)

@new_store.errors.full_messages.each(&error_messages)
@new_store.errors.clear

@new_store = Store.create(
  name: store_name,
  mens_apparel: true,
  womens_apparel: true
)
@new_store.errors.full_messages.each(&error_messages)
@new_store.errors.clear

@new_store = Store.create(
  name: store_name,
  annual_revenue: 480_000,
  mens_apparel: false,
  womens_apparel: false
)

@new_store.errors.full_messages.each(&error_messages)
@new_store.errors.clear
