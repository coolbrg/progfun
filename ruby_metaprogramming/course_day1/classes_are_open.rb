def encrypt(str)
  str.tr("a-z", "b-za")
end
str = "Hello, Ruby"
puts encrypt(str)


# Is it Really Object Oriented?

# Open class as
class String
  def encrypt
    tr "a-z", "b-za"
  end
end
puts encrypt(str)

# Have you used 3.hours.from_now in Rails?

# Following is how it is implemented:
class Fixnum
  def hours
    self * 3600
  end
  def from_now
    Time.now + self
  end
end
puts 3.hours.from_now

