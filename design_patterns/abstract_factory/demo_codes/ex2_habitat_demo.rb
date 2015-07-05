require './ex1_habitat'
require './ex1_plants'
require './ex1_animals'
require './ex2_organism_factory'

land_organisms = OrganismFactory.new(Tiger, Tree)
habitat = Habitat.new(3, 2, land_organisms)
habitat.simulate_one_day

pond_organisms = OrganismFactory.new(Frog, Lotus)
habitat = Habitat.new(3, 3, pond_organisms)
habitat.simulate_one_day
