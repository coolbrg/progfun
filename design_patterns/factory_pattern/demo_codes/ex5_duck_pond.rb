require './ex4_pond'
require './ex3_duck'

class DuckPond < Pond
  def new_animal(name)
    Duck.new(name)
  end
end
