require './ex4_employee'
require './ex2_observers'

ram = Employee.new('Ram', 'Developer', 4000)

puts 'Registering Payroll as Observer...'
payroll = Payroll.new
ram.add_observer(payroll)
puts 'Registering TaxMan as Observer...'
taxman = TaxMan.new
ram.add_observer(taxman)

puts "#{ram.name}'s Salary: #{ram.salary}"
puts 'Updating salary...'
ram.salary = 6000
