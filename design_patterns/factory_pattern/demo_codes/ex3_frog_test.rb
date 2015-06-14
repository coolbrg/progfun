require 'minitest/autorun'

require './ex3_frog'

class FrogTest < Minitest::Test
  def test_frog
    f = Frog.new('abc')
    name = f.instance_variable_get(:@name)
    assert_equal 'abc', name
    f.eat
    f.speak
    f.sleep
  end
end
