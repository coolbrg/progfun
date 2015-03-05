# Binding Demo

class MyClass
	def my_method
		@x = 1
		binding
	end
end

b = MyClass.new.my_method
puts b.eval("@x")