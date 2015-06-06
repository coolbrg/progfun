require './ex1_duck'

class Pond
  def initialize(numbers_ducks)
    @ducks = []

    numbers_ducks.times do |i|
      duck = Duck.new("Duck#{i}")
      @ducks << duck
    end
  end

  def simulate_one_day
    @ducks.each {|duck| duck.speak }
    @ducks.each {|duck| duck.eat }
    @ducks.each {|duck| duck.sleep }
  end
end
