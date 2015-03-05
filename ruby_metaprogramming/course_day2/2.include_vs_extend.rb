# include : mixes in specified module methods as instance methods in the target class
# extend : mixes in specified module methods as class methods in the target class or
#          we can say adds the specified module's methods and constants to the
#          target's metaclass (i.e. the singleton class)
# extend is a public method while include is private and intended to be called from
# within the container class/module.

module ReusableModule
  def module_method
    puts "Module Method: Hi there!"
  end
end

class FirstClass
  include ReusableModule
end
class SecondClass
  extend ReusableModule
end
class ThirdClass
end

o1 = FirstClass.new
puts "Include"
o1.module_method
puts "Extend"
SecondClass.module_method

# How second class object can use this
o3 = ThirdClass.new
o3.extend ReusableModule
o3.module_method
