class A
  def foo
    puts "In Foo"
  end
  def instance_method(name, &block)
    self.class.send(:define_method, name, &block)
  end
  def class_method(name, &block)
  	(class << self; self; end).send(:define_method, name, &block)
  end
  define_method(:bar) { puts "In Bar" }
end
class B < A
  define_method(:call_foo, instance_method(:foo))
end

a = B.new
a.call_foo
a.bar
a.instance_method(:fum) { puts "In fum inside #{self.to_s}" }
a.class_method(:bum) { puts "In bum inside #{self.to_s}" }
a.fum
a.bum # is it really a Class method?

begin
	A.bum
rescue Exception => e
  puts e.message
end


# Assignment :
# Create a method(instance or class) that is used a
# factory method for creating class method
