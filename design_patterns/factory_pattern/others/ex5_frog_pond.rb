require './ex4_pond'
require './ex3_frog'

class FrogPond < Pond
  def new_animal(name)
    Frog.new(name)
  end
end
