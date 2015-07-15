require './ex2_employee'
require './ex1_payroll'

payroll = Payroll.new
ram = Employee.new('Ram', 'Developer', 4000)
puts 'Registering Payroll as Observer...'
ram.add_observer(payroll)
puts "#{ram.name}'s Salary: #{ram.salary}"
puts 'Updating salary...'
ram.salary = 6000
