# Different kind of ponds
require './ex7_pond'
require './ex3_frog'
require './ex1_duck'
require './ex6_plants'

class DuckLotusPond < Pond
  def new_organism(type, name)
    if type == :animal
      Duck.new(name)
    elsif type == :plant
      Lotus.new(name)
    end
  end
end

class FrogAlgaePond < Pond
  def new_organism(type, name)
    if type == :animal
      Frog.new(name)
    elsif type == :plant
      Algae.new(name)
    end
  end
end
