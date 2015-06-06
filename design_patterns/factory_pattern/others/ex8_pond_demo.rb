require './ex8_pond'
require './ex3_frog'
require './ex1_duck'
require './ex6_plants'

pond = Pond.new(3, Frog, 2, Lotus)
pond.simulate_one_day

pond = Pond.new(3, Duck, 2, Algae)
pond.simulate_one_day
