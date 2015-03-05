module Foo
  def foo_method
  end
end

class MyClass
  include Foo
  def self.class_method_one
  end
end
def MyClass.class_method_two
end

o = MyClass.new
metaclass = class << o
  self
end

puts "metaclass.class: #{metaclass.class}"
puts "metaclass.superclass: #{metaclass.superclass}"
puts "metaclass.singleton_methods: "
p metaclass.singleton_methods


def metaclass.metaclass_method
end
puts "after: def metaclass.metaclass_method"

p metaclass.singleton_methods
puts "MyClass.singleton_methods: "
p MyClass.singleton_methods
