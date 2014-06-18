# Calculating square root using Newton's Method:

=begin
# 1st Approach
  def good_enough?(a, n, delta)
    (a**2 - n).abs < delta
  end

  def next_guess(a, n)
    (a + n/a) / 2.0
  end

  def cal_sqrt(n, delta = 0.001)
    guess = n / 2.0
    until good_enough?(guess, n, delta)
      guess = next_guess(guess, n)
    end
    guess
  end
  cal_sqrt(16)
=end

# 2nd Approach
def cal_sqrt(n, delta = 0.001)
  guess = n / 2.0
  until (guess**2 - n).abs < delta
    guess = (guess + n/guess) / 2.0
  end
  guess
end
cal_sqrt(16)
