# Singleton method - Method belonging to only single(particular) object
class Bar
end

o = Bar.new
def o.my_singleton_method
  puts 'My Singleton method'
end
p o.singleton_methods




# Class Methods are also singleton methods
class MyClass
  def self.class_method_one
    puts 'Class method one...'
  end
end
p MyClass.singleton_methods

def MyClass.class_method_two
  puts 'Class method two...'
end
p MyClass.singleton_methods
