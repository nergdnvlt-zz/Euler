require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

require './lib/first_factor'

# This class will test the factor class
class FirstFactorTest < MiniTest::Test
  def test_it_exists
    factor = FirstFactor.new(13_195)

    assert_instance_of FirstFactor, factor
  end

  # def test_divisible_by_two
  #   factor = FirstFactor.new(13_195)
  #   result = factor.divisible?(2)
  #   expected = false
  #
  #   assert_equal expected, result
  # end
  #
  # def test_divisible_by_three
  #   factor = FirstFactor.new(13_195)
  #   result = factor.divisible?(3)
  #   expected = false
  #
  #   assert_equal expected, result
  # end
  #
  # def test_divisible_by_five
  #   factor = FirstFactor.new(13_195)
  #   result = factor.divisible?(5)
  #   expected = true
  #
  #   assert_equal expected, result
  # end

  def test_it_finds_first_for_13_195
    factor = FirstFactor.new(13_195)
    result = factor.first
    expected = 5

    assert_equal expected, result
  end

  def test_it_finds_first_for_25
    factor = FirstFactor.new(25)
    result = factor.first
    expected = 5

    assert_equal expected, result
  end

  def test_it_finds_first_for_10
    factor = FirstFactor.new(10)
    result = factor.first
    expected = 2

    assert_equal expected, result
  end

  def test_it_finds_first_for_13
    factor = FirstFactor.new(13)
    result = factor.first
    expected = 13

    assert_equal expected, result
  end

  def test_it_finds_first_for_29
    factor = FirstFactor.new(29)
    result = factor.first
    expected = 29

    assert_equal expected, result
  end

  def test_cm_finds_first_for_29
    result = FirstFactor.first(29)
    expected = 29

    assert_equal expected, result
  end
end
