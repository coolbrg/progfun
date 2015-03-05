require './1.computer_info'

# Using define_method removing define_component duplication
class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
    data_source.methods.grep(/^get_(.*)_info$/) do
      # check with self.define_compoent
      self.class.define_component $1
    end
  end

  def self.define_component(name)
    define_method(name) do
      info = @data_source.send "get_#{name}_info", @id
      price = @data_source.send "get_#{name}_price", @id
      result = "#{name.capitalize}: #{info} (Rs #{price})"
      return "* #{result}" if price >= 3000
      result
    end
  end
end

puts "===============> Using Define Method "
comp = Computer.new('P4', DataSource.new)
puts comp.mouse
puts comp.cpu
puts comp.keyboard

# Extra Benefit:
# If you add any component to data source it will be
# automatically available
