 # instance_eval: Evaluate a string or block in the
 #                context of an instance of a class

class MyClass
	attr_accessor :data
	def initialize
		@data = 10
	end
end

obj = MyClass.new
puts "1. ==============> instance_eval block demo"
puts "== First object data: "
data = 20
obj.instance_eval { @data = data }
puts obj.instance_eval { @data }

puts "== Another object data: "
puts MyClass.new.data





puts "2. ==============> instance_eval string demo"
arr = [1, 2, 3, 4]
arr.instance_eval("self << 10")
puts arr.inspect

