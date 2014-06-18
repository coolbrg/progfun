# 1. Factorial - Recursive Way
def fact_rec(x)
  x < 2 ? 1 : x * fact(x - 1)
end

# 1. Factorial - Iterative Way
def fact_iter(n, sum = 1)
  n < 2 ? sum : fact_iter(n - 1, sum * n)
end

# 2. Multiplication using addition - Recursive Way
def mul_rec(a, b)
  b == 1 ? a : a + mul_rec(a, b - 1)
end

# 2. Multiplication using addition - Iterative Way
def mul_iter(a, b, count = 1)
  b.downto(1).each {|e| a +a }
  sum = a if
  count == b ? a : mul_iter(sum + a, b, count + 1)
end

# 3. Calculating gcd
def gcd(a, b)
  b == 0 ? a : gcd(b, a % b)
end