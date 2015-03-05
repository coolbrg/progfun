# Lambda Vs Proc

# 1. lambda checks no. of argument passed while Proc doesn't
puts '=======> 1. lambda checks no. of argument passed while Proc doesn\'t'
def middle_ware(code)
  one, two = 1, 2
  code.call(one, two)
end

puts '---> proc result for proc.call(1, 2) '
proc = Proc.new{ |a, b, c| puts "Give me a #{a} and a #{b} and a #{c.class}" }
middle_ware(proc)

begin
  puts '---> lambda result for lambda.call(1, 2) '
  lamda = lambda { |a, b, c| puts "Give me a #{a} and a #{b} and a #{c.class}" }
  middle_ware(lamda)
rescue Exception => e
  puts "Error: #{e.message}"
end

# 2. Returning behavior of proc and lambda is different
#   - Proc return will stop a method and return the value provided
#   - lambda will return their value to the method and let the method continue on
puts '=======> 2. Returning behavior of proc and lambda is different'
def proc_return
  Proc.new { return "Returning Proc..." }.call
  "proc_return method finished"
end

def lambda_return
  lambda { return "Returning lambda..." }.call
  "lambda_return method finished"
end

puts '---> proc_return '
puts proc_return

puts '---> lambda_return '
puts lambda_return


