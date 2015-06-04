# Green Color
require './color'

class Green
  include Color

  def fill
    puts "I am in #{self.class} color."
  end
end
