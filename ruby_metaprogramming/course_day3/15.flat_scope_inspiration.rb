my_var = "Success"

class MyClass
	begin
		puts "my_var inside class #{my_var}."
	rescue Exception => e
		puts e.message
	end

	def my_method
		puts "my_var inside my_method #{my_var}."
	end
end

begin
	MyClass.new.my_method
rescue Exception => e
	puts e.message
end
