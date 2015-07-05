require './ex1_habitat'
require './ex1_plants'
require './ex1_animals'
require './ex1_jungle_organism'
require './ex1_pond_organism'

habitat = Habitat.new(3, 2, JungleOrganismFactory.new(Tiger, Tree))
habitat.simulate_one_day

habitat = Habitat.new(3, 3, PondOrganismFactory.new(Frog, Lotus))
habitat.simulate_one_day
