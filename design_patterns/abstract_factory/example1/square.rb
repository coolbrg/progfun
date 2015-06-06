# Square class

require './shape'

class Square
  include Shape

  def draw
    puts "Drawing #{self.class} shape."
  end
end
