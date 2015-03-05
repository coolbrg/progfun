# Like a function without a name(anonymous)
# From 1.9+, ->() {} or lambda {}
# Last expression is return value
# Lambdas in Ruby are also objects.
# It is quite similar to Proc

# Simple lambda
puts "==========> 1. Simple Lambda"
l = lambda { "Hello Ruby!!!" }
p l.call



# labmda taking argument
puts "==========> 2. Labmda taking argument"
l = lambda do |string|
  if string == 'Ruby'
    "#{string} is created by Matz."
  elsif string == 'Rails'
    "#{string} is created by DHH."
  end
end
puts l.call('Ruby')
puts l.call('Rails')



puts "==========> 3. transform! method can be written in lambda too"
class Array
  def transform!(code)
    self.each_with_index do |n, i|
      self[i] = code.call(n)
    end
  end
end
array = [1, 2, 3, 4]
puts "Before transform! : #{array.inspect}"
array.transform!(lambda { |n| n*n })
puts "After transform! : #{array.inspect}"




# Assignment
# 1. Create a lambda that will increment any number passed to
#    it by 5.
# 2. Create a lambda to multiply two numbers.
