# Habitat class that deal with appropriate jungles

class Habitat
  def initialize(numbers_animals, animal_class, numbers_plants, plant_class)
    @animals = []
    @animal_class = animal_class
    @plant_class = plant_class

    numbers_animals.times do |i|
      animal = new_organism(:animal, "Animal#{i}")
      @animals << animal
    end

    @plants = []

    numbers_plants.times do |i|
      plant = new_organism(:plant, "Plant#{i}")
      @plants << plant
    end
  end

  def simulate_one_day
    @plants.each { |plant| plant.grow }
    @animals.each { |animal| animal.speak }
    @animals.each { |animal| animal.eat }
    @animals.each { |animal| animal.sleep }
  end

  def new_organism(type, name)
    if type == :animal
      @animal_class.new(name)
    elsif type == :plant
      @plant_class.new(name)
    else
      raise "Unknown organism type : #{type}"
    end
  end
end
