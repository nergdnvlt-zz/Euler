require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

require './lib/factor'

# This class will test the factor class
class FactorTest < MiniTest::Test
  def test_it_exists
    factor = Factor.new(13_195)

    assert_instance_of Factor, factor
  end

  def test_it_gets_first_correctly
    factor = Factor.new(13_195)
    result = factor.first
    expected = 5

    assert_equal expected, result
  end

  def test_it_builds_factor_line
    factor = Factor.new(13_195)
    result = factor.factor_line
    expected = [5, 7, 13, 29]

    assert_equal expected, result
  end
end
