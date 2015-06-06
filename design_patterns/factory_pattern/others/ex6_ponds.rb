# Different kind of ponds
require './ex6_pond'
require './ex3_frog'
require './ex1_duck'
require './ex6_plants'

class DuckLotusPond < Pond
  def new_animal(name)
    Duck.new(name)
  end

  def new_plant(name)
    Lotus.new(name)
  end
end

class FrogAlgaePond < Pond
  def new_animal(name)
    Frog.new(name)
  end

  def new_plant(name)
    Algae.new(name)
  end
end
