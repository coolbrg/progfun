# Calculating square root using Newton's Method:
def cal_sqrt(n, delta = 0.001)
  guess = n / 2.0
  until (guess**2 - n).abs < delta
    guess = (guess + n/guess) / 2.0
  end
  guess
end
cal_sqrt(16)

