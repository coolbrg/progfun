# Ruby Array function like each, map, collect, select uses blocks

puts "==========> 1. Array#map "
array = [1, 2, 3, 4]
array.map! do |n|
  n ** 2
end
puts array.inspect


puts "==========> 2. Custom map! : Let's give it name as transform!"
class Array
  def transform!
    self.each_with_index do |n, i|
      self[i] = yield(n)
    end
  end
end
array = [1, 2, 3, 4]
puts "Before transform! : #{array.inspect}"
array.transform! { |n| n*n }
puts "After transform! : #{array.inspect}"

=begin
- Call transform! to the Array of numbers.
- When yield is called with the number n (first time is 1, second time is 2, etc…),
  pass the number to the block of code given.
- The block has the number available (also called n) and squares it.
  As it is the last value handled by the block, it is returned automatically.
- Yield outputs the value returned by the block, and rewrites the value in the array.
- This continues for each element in the array.
=end
