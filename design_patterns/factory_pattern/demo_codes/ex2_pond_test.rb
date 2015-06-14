require 'minitest/autorun'

require './ex1_duck'
require './ex2_pond'

class Pondest < MiniTest::Test
  def test_pond
    p = Pond.new(2)
    assert_equal Array, p.instance_variable_get(:@ducks).class
    assert_equal 2, p.instance_variable_get(:@ducks).size
  end
end
