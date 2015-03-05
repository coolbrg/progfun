# Method: Way of storing actual named methods and passing
#         them around as arguments to or returns from other
#         methods in your code.

class Array
  def transform!(code)
    self.each_with_index do |n, i|
      self[i] = code.call(n)
    end
  end
end

def square(n)
  n * n
end

def cube(n)
  n * n * n
end

puts '==========> 1. transform! : Method way'
array = [1, 2, 3, 4]
puts "Before transform! : #{array.inspect}"
my_sqr = method(:square)
array.transform!(my_sqr)
puts "After transform! as square : #{array.inspect}"

array = [1, 2, 3, 4]
puts "Before transform! : #{array.inspect}"
my_cube = method(:cube)
array.transform!(my_cube)
puts "After transform! as cube : #{array.inspect}"
