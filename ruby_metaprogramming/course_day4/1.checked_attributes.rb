require 'test/unit'
require './class_macro'

# Our person class
class Person
  attr_checked :name do |name|
    name.length >= 6
  end
end

# Class to check attributes of Person
class TestCheckedAttributes < Test::Unit::TestCase
  def setup
    @bob = Person.new
  end

  def test_accepts_valid_values
    @bob.name = 'Budh Ram'
    assert_equal 'Budh Ram', @bob.name
  end

  def test_refuses_invalid_values
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.name = 'Budh ram'
    end
  end
end
