class Pond
  def initialize(numbers_animals)
    @animals = []

    numbers_animals.times do |i|
      animal = new_animal("Animal#{i}")
      @animals << animal
    end
  end

  def simulate_one_day
    @animals.each {|animal| animal.speak }
    @animals.each {|animal| animal.eat }
    @animals.each {|animal| animal.sleep }
  end
end
