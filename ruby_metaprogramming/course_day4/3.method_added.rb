# method_added : Invoked as a callback whenever an instance
# method is added to the receiver.
puts '1. ========================= Class Way'
# extending Class behavior
class Class
  def one
    1
  end

  def method_added(method_name)
    puts "'#{method_name}' added to #{self}"
  end

  def two
    2
  end
end

# Just a simple class
class Foo
  def greet
    'Hello!'
  end
end

puts Foo.new.greet

puts '2. ========================= Module Way'
# Use of method_added in module
module Chatty
  def self.method_added(method_name)
    puts "Adding instance method '#{method_name}'"
  end
  def self.some_class_method() end
  def some_instance_method() end
end
