# Red Color
require './color'

class Red
  include Color

  def fill
    puts "I am in #{self.class} color."
  end
end
