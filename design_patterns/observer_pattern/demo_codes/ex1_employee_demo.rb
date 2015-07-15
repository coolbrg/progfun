require './ex1_employee'
require './ex1_payroll'

payroll = Payroll.new
ram = Employee.new('Ram', 'Developer', 4000, payroll)
puts "#{ram.name}'s Salary: #{ram.salary}"
puts 'Updating salary...'
ram.salary = 6000
