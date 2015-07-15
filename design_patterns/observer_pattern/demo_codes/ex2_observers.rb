# Observers Class
class TaxMan
  def update(employee)
    puts "Send #{employee.name} a new tax bill!"
  end
end

# Payroll Class
class Payroll
  def update(employee)
    puts "Cut a new check for #{employee.name}!"
    puts "His salary is now #{employee.salary}!"
  end
end
