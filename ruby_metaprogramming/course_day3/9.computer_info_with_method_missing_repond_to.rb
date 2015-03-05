require './1.computer_info'

class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def respond_to?(method)
    @data_source.respond_to?("get_#{method}_info" ) || super
  end

  def method_missing(name, *args)
    if respond_to?(name)
      info = @data_source.send("get_#{name}_info", args[0])
      price = @data_source.send("get_#{name}_price", args[0])
      result = "#{name.to_s.capitalize}: #{info} (Rs #{price})"
      return "* #{result}" if price >= 3000
      result
    else
      "Component #{name} avilable soon. Please check again later."
    end
  end
end

comp = Computer.new('P4', DataSource.new)
puts comp.mouse
puts comp.cpu
puts comp.keyboard
puts comp.printer
