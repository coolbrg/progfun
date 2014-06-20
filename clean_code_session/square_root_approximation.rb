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
def good_enough?(a, n, delta)
  (a**2 - n).abs < delta
end

def next_guess(a, n)
  (a + n / a.to_f) / 2.0
end

def iter(n, guess, delta)
  return guess if good_enough?(guess, n, delta)
  iter n, next_guess(guess, n), delta
end

def cal_sqrt(n, delta = 0.001)
  iter n, n / 2.0, delta
end
puts "Square root of 16 is: #{cal_sqrt(16)}"
