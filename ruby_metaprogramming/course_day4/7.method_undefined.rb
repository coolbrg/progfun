# method_undefined: Invoked as a callback whenever
# a singleton method is removed from the receiver.
puts '1. =================== Module Way'
module Chatty
  def self.method_undefined(method_name)
    puts "Undefining method (@) '#{method_name}'"
  end
  def one()   end
  undef_method :one
end

puts '1. =================== Class Way'
class Class
  def method_undefined(method_name)
    puts "Huhhh!!!, undefining instance method '#{method_name}'."
  end
end

class Foo
  def foo
    puts "foooooooo!!!!!"
  end
end

obj = Foo.new
obj.foo

class Foo
  undef :foo
end
