# Class_eval: Evaluate a string or block in the
# 						context of a class or module.
# Common Use: Add methods to a class and
# 						including other modules in a class.

class Foo
end

str = %q{def hello; "Hello, how are you?" end }

Foo.class_eval(str)
puts Foo.new.hello

puts "1. =================> class_eval block demo"
Foo.class_eval do
	puts "self: #{self}"
	MyPI = 3.142
	def hi(msg=nil)
		msg.nil? ? "Hello, world!!!" : "Hello, #{msg}!!!"
	end

	def bye(msg=nil)
		msg.nil? ? "Bye, world!!!" : "Bye, #{msg}!!!"
	end
end
puts MyPI
obj = Foo.new
puts "2. =================> class_eval string demo"
puts obj.hi('Ruby on Rails')
puts obj.bye('Ruby on Rails')
