require './1.computer_info'

class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end
  def mouse
    info = @data_source.get_mouse_info(@id)
    price = @data_source.get_mouse_price(@id)
    result = "Mouse: #{info} (Rs #{price})"
    return "* #{result}" if price >= 3000
    result
  end
  def cpu
    info = @data_source.get_cpu_info(@id)
    price = @data_source.get_cpu_price(@id)
    result = "Cpu: #{info} (Rs #{price})"
    return "* #{result}" if price >= 3000
    result
  end
  def keyboard
    info = @data_source.get_keyboard_info(@id)
    price = @data_source.get_keyboard_price(@id)
    result = "Keyboard: #{info} (Rs #{price})"
    return "* #{result}" if price >= 3000
    result
  end
end

puts "===============> Methods based on peripharials "
comp = Computer.new('P4', DataSource.new)
puts comp.mouse
puts comp.cpu
puts comp.keyboard
