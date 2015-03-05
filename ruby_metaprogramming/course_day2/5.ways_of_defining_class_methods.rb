# Ways of Defining Class Method
class MyClass
  # 1rd Way
  def self.class_method_one
    puts 'Class method one...'
  end

  # 2nd Way
  def MyClass.class_method_two
    puts 'Class method two...'
  end

  # 3rd Way
  class << self
    def class_method_three
      puts 'Class method three...'
    end
  end
end

# 4th Way
def MyClass.class_method_four
  puts 'Class method four...'
end

p MyClass.class_method_one
p MyClass.class_method_two
p MyClass.class_method_three
p MyClass.class_method_four
p MyClass.singleton_methods