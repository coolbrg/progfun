# ruby runtime goes up the chain to find the method,
# and then at the very end, it calls method_missing
# right before it raises a NoMethodError.

# Phase 1
puts "1. ==========> Prior to method_missing"
class B
  def foo
    puts "Foo from #{self.class}"
  end
end


o = B.new
o.foo
begin
  o.bar
rescue Exception => e
  puts e.message
end





















puts "2. ==========> After use of method_missing"
class B
  def foo
    puts "Foo from #{self.class}"
  end

  def method_missing(method, *args)
    puts "You called #{method} (#{args.join(', ')}) but it doesn't exist."
  end
end

o = B.new
o.foo
o.bar('arg1', 'arg2')




















puts "3. ==========> Another Use Case"
class A
  def bar
    puts "Bar from #{self.class}"
  end
end

class B
  def initialize
    @b = A.new
  end

  def foo
    puts "Foo from #{self.class}"
  end

  def method_missing(method_name, *args, &block)
    @b.send(method_name, *args, &block)
  end
end

B.new.foo
B.new.bar

# Ruby runtime goes up the chain to find the method,
# and then at the very end,
# it calls method_missing right before it
# raises a NoMethodError.
