v1 = 1

class MyClass
	v2 = 2
	puts "Inside Class Before my_method: #{local_variables.inspect}"

	def my_method
		v3 = 3
		puts "Inside my_method: #{local_variables.inspect}"
	end
	puts "Inside Class After my_method: #{local_variables.inspect}"
end
obj = MyClass.new
obj.my_method
obj.my_method
puts "Outside Class: #{local_variables.inspect}"
