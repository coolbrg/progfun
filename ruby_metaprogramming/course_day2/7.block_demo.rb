# Block: The official definition of block is
#        "A section of code which is grouped together."
# In Ruby: Piece of code that is wrapped inside {...} or do...end pair
#         that can't be stored in a variable and isn't an object

# Yield:
#   - Used when you write a method that takes a block,
#     you can use the 'yield' keyword to execute the block
#   - Yeild basically does suspend-execute-resume

# 1. Simple Yield
puts '=====> 1. Simple Yield'
def block1
  puts 'Start of method'
  yield
  yield
  puts 'End of method'
end
block1 { puts 'In the block' }

# NOTE: The code in the block is not executed at the time it is
#       encountered by the Ruby interpreter.
# Instead, Ruby remembers the context in which the block appears
# and then enters the method and execute block once yield is
# encountered.
# If no code block is passed,
# Ruby raises an exception: no block given (LocalJumpError)


# 2. Yield passing paramter
# You can provide parameters to the call to yield that will be passed to the block
puts '=====> 2. Yield passing paramter'
def block2
  yield('Hello', 99)
end
block2 { |str, num| puts str + ' ' + num.to_s }


# 3. Used as a Syntactic Sugar
puts '=====> 3. Used as a Syntactic Sugar'
def do_something_for_each(array)
  array.map do |el|
    yield(el)
  end
end

# Is just syntax sugar for:
=begin
  def do_something_for_each(array, &block)
    array.map do |el|
      block.call(el)
    end
  end
=end

p do_something_for_each([1,2,3,4,5]) { |n| n * 5 }


# 4. Tackle issue if block not given
puts '=====> 4. Tackle issue if block not given'
def block3
  if block_given?
    yield('Hello', 99)
  else
    puts "no block"
  end
  # yield('hello', 99) if block_given?
end
block3
block3 { |str, num| puts str + ' ' + num.to_s }


# 5. Use of yield-block pair in class
puts '=====> 5. Hany use of yield-block pair in class'
class Person
  def initialize(name)
    @name = name
  end

  def do_with_name
    yield @name
  end
end
person = Person.new("Ruby")
person.do_with_name do |name|
  ['nice', 'cool', 'awesome'].each do |feature|
    puts "#{name} is #{feature}."
  end
end
