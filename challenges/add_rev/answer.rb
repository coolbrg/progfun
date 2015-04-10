cases = gets.chomp.to_i

if cases.zero?
  puts 'Enter number > 0'
  exit
end

def reverse_num(num)
  rev = 0
  while num > 0 do
    rev *= 10
    rev += num % 10
    num /= 10
  end
  rev
end

cases.times do |index|
  input_str = gets.chomp
  sum = input_str.split(' ').map{ |n| reverse_num(n.to_i) }.reduce(:+)
  puts reverse_num(sum)
end

