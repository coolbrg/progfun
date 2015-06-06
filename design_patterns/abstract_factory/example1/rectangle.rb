# Rectangle class

require './shape'

class Rectangle
  include Shape

  def draw
    puts "Drawing #{self.class} shape."
  end
end
