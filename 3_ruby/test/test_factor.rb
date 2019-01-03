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

  # def test_it_gets_first_correctly
  #   factor = Factor.new(13_195)
  #   result = factor.first
  #   expected = 5
  #
  #   assert_equal expected, result
  # end

  def test_it_builds_factor_line
    factor = Factor.new(13_195)
    result = factor.factor_line
    expected = [5, 7, 13, 29]

    assert_equal expected, result
  end

  def test_it_builds_factor_line_for_126
    factor = Factor.new(126)
    result = factor.factor_line
    expected = [2, 3, 3, 7]

    assert_equal expected, result
  end

  def test_highest_for_13195
    factor = Factor.new(13_195)
    result = factor.highest
    expected = 29

    assert_equal expected, result
  end

  def test_highest_for_126
    factor = Factor.new(126)
    result = factor.highest
    expected = 7

    assert_equal expected, result
  end

  def test_cm_highest_for_13195
    result = Factor.highest(13_195)
    expected = 29

    assert_equal expected, result
  end

  def test_cm_highest_for_126
    result = Factor.highest(126)
    expected = 7

    assert_equal expected, result
  end
end
