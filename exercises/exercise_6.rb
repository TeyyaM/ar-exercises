require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts 'Exercise 6'
puts '----------'

# Your code goes here ...
@store1.employees.create(
  first_name: 'Khurram',
  last_name: 'Virani',
  hourly_rate: 60
)
@store1.employees.create(
  first_name: 'Andy',
  last_name: 'Lindsay',
  hourly_rate: 900
)
@store1.employees.create(
  first_name: 'Andie',
  last_name: 'Lindsae',
  hourly_rate: 18_000
)
@store1.employees.create(
  first_name: 'Steve',
  last_name: 'Jobs',
  hourly_rate: 9_999_999
)
@store2.employees.create(
  first_name: 'Santa',
  last_name: 'Claus',
  hourly_rate: 0
)
@store2.employees.create(
  first_name: 'Rudolf',
  last_name: 'Raindir',
  hourly_rate: 2
)
@store2.employees.create(
  first_name: 'Frosti',
  last_name: 'Snowoman',
  hourly_rate: 7
)
@store2.employees.create(
  first_name: 'If_You_Are_Reading_These',
  last_name: 'I_Love_You',
  hourly_rate: 3
)
