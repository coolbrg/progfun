# Phase 1
class ClassMethodDemo
  def self.greet
    puts "Hello, Ruby"
  end
end
ClassMethodDemo.greet


# Phase 2
class ClassMethodDemo
  def self.greet
    puts "Hello, Ruby"
  end
  ClassMethodDemo.greet
end


# Phase 3
class ClassMethodDemo
  def self.greet
    puts "Hello, Ruby"
  end
  greet
end


# Phase 4
class ClassMethodDemo
  def self.greet
    puts "Hello, Ruby"
  end
end

class UseDemo < ClassMethodDemo
  greet
end


# How Rails is using it?
module AR
  class Base
    def self.has_many(model)
      # some relationship setting with model
      puts "Hello, Ruby"
    end
  end
end

class Library < AR::Base
  has_many :books
end
