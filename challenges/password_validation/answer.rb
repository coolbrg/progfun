def is_in_sequence(numbers)
  numbers.first.step.take(numbers.length) == numbers || numbers.first.step(by: -1).take(numbers.length) == numbers
end

# validation method
# assuming password is 6 charactes string
def validate(password)
  response = {
    status: 'OK', message: ''
  }
  digits = password.split('').map(&:to_i)

  if is_in_sequence(digits)
    response[:status] = 'Error'
    response[:message] = "Numbers cannot consecutively go up or down."
  end
  response
end

begin
  ar = [
    "123456", "234567", "345678", "109876", "5362", "012345", "98765"
  ]

  ar.each do |e|
    puts validate(e)
  end
rescue Exception => e
  puts e.message
end
