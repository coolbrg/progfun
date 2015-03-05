# Use case: Class Extension Mixin
require 'test/unit'
require './class_extension_macro'

# Our person class
class Person
  include CheckedAttributes
  attr_checked :name do |name|
    name.length >= 6
  end
end

# Class to check attributes of Person
class TestCheckedAttributes < Test::Unit::TestCase
  def setup
    @bob = Person.new
    Person.attr_checked :age do |age|
      age >= 18
    end
  end

  def test_accepts_valid_values
    @bob.name = 'Budh Ram'
    @bob.age = 25
    assert_equal 'Budh Ram', @bob.name
    assert_equal 25, @bob.age
  end

  def test_refuses_invalid_name
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.name = 'Budh'
    end
  end

  def test_refuses_invalid_age
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = 17
    end
  end
end
