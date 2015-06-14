require './ex9_habitat'
require './ex9_tiger'
require './ex9_tree'
require './ex1_duck'
require './ex6_plants'


habitat = Habitat.new(3, Tiger, 2, Tree)
habitat.simulate_one_day

habitat = Habitat.new(3, Duck, 2, Algae)
habitat.simulate_one_day
