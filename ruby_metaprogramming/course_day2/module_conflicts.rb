# When conflicts occurs and want to use both functions
# Call module methods wrapped inside instance methods
module First
  def self.foo
    puts 'First foo'
  end
end

module Second
  def self.foo
    puts 'Second foo'
  end
end

class UseModule
  include First
  include Second

  def first_foo
    First::foo
  end

  def second_foo
    Second::foo
  end
end

o = UseModule.new
puts "First module foo:"
o.first_foo
puts "Second module foo:"
o.second_foo





