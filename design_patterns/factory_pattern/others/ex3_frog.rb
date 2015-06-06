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
