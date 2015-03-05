# Extends the specified object by adding this
# module constants and methods
# (which are added as singleton methods).

module MyModule
  def self.extend_object(obj)
    puts "1. Hello from '#{self}'"
    super # important
  end

  def hello
    puts "2. Hello from '#{self}'"
  end
end

obj = 'Hello String'
obj.extend MyModule
obj.hello
