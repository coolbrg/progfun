require './1.computer_info'

# Delegate task based on component
class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def mouse
    component :mouse
  end

  def cpu
    component :cpu
  end

  def keyboard
    component :keyboard
  end
  # Three methods with same pattern

  private
  def component(name)
    info = @data_source.send "get_#{name}_info", @id
    price = @data_source.send "get_#{name}_price", @id
    result = "#{name.to_s.capitalize}: #{info} (Rs #{price})"
    return "* #{result}" if price >= 3000
    result
  end
end

puts "===============> Delegation based on component name "
comp = Computer.new('P4', DataSource.new)
puts comp.mouse
puts comp.cpu
puts comp.keyboard
