# Calculating square root using Newton-Raphson's Method:

# 1st Approach
# def cal_sqrt(n, delta = 0.001)
#   guess = n / 2.0
#   until (guess**2 - n).abs < delta
#     guess = (guess + n/guess) / 2.0
#   end
#   guess
# end
# cal_sqrt(16)

# 2nd Approach
=begin
  def good_enough?(a, n, delta)
    (a**2 - n).abs < delta
  end

  def next_guess(a, n)
    (a + n / a.to_f) / 2.0
  end

  def iter(n, guess, delta)
    until good_enough?(guess, n, delta)
      guess = next_guess(guess, n)
    end
    guess
  end

  def cal_sqrt(n, delta = 0.001)
    iter n, n / 2.0, delta
  end
  puts "Square root of 16 is: #{cal_sqrt(16)}"
=end

# 3rd Approach
class Sqrt
  attr_accessor :num, :delta
  def initialize(num, delta = 0.001)
    @num = num
    @delta = delta
  end

  def good_enough?(guess)
    (guess**2 - num).abs < delta
  end

  def next_guess(guess)
    (guess + num / guess.to_f) / 2.0
  end

  def iter(guess)
    until good_enough? guess
      guess = next_guess guess
    end
    guess
  end

  def calculate
    iter (num / 2.0)
  end
end

puts Sqrt.new(16).calculate