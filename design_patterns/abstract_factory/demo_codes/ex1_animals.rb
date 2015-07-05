# Tiger Class
class Tiger
  def initialize(name)
    @name = name
  end

  def eat
    puts "Tiger #{@name} eats anything it wants."
  end

  def speak
    puts "Tiger #{@name} growls."
  end

  def sleep
    puts "Tiger #{@name} sleep anywhere it wants."
  end
end

# Duck Class
class Duck
  def initialize(name)
    @name = name
  end

  def eat
    puts "Duck #{@name} is eating."
  end

  def speak
    puts "Duck #{@name} is speaking."
  end

  def sleep
    puts "Duck #{@name} is sleeping."
  end
end

# Frog Class
class Frog
  def initialize(name)
    @name = name
  end

  def eat
    puts "Frog #{@name} is eating."
  end

  def speak
    puts "Frog #{@name} Crooooaaaak!."
  end

  def sleep
    puts "Frog #{@name} doesn't sleep. He croaks all night!"
  end
end

#
