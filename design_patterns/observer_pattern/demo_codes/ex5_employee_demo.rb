require './ex5_employee'

ram = Employee.new('Ram', 'Developer', 4000)

puts 'Registering Payroll as Observer...'
ram.add_observer do |employee|
  puts "Cut a new check for #{employee.name}!"
  puts "His salary is now #{employee.salary}!"
end

puts 'Registering TaxMan as Observer...'
ram.add_observer do |employee|
  puts "Send #{employee.name} a new tax bill!"
end

puts "#{ram.name}'s Salary: #{ram.salary}"
puts 'Updating salary...'
ram.salary = 6000
