require './1.computer_info'

# Using define_method
class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def self.define_component(name)
    define_method(name) do
      info = @data_source.send "get_#{name}_info", @id
      price = @data_source.send "get_#{name}_price", @id
      result = "#{name.to_s.capitalize}: #{info} (Rs #{price})"
      return "* #{result}" if price >= 3000
      result
    end
  end

  # Three define_component with same pattern
  define_component :mouse
  define_component :cpu
  define_component :keyboard
end

puts "===============> Using Define Method "
comp = Computer.new('P4', DataSource.new)
puts comp.mouse
puts comp.cpu
puts comp.keyboard
