require 'minitest/autorun'

require './ex1_duck'

class DuckTest < MiniTest::Test
  def test_duck
    d = Duck.new('fred')
    assert_equal 'fred', d.instance_variable_get(:@name)

    d.eat
    d.speak
    d.sleep
  end
end
