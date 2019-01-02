require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

require './lib/sum_evens'

# Test for the fibonacci class.
class SumEvenTest < MiniTest::Test
  def test_it_exists
    sum = SumEvens.new(10)
    assert_instance_of SumEvens, sum
  end

  def test_returns_sum_to_10
    sum = SumEvens.new(10)
    result = sum.result
    expected = 10

    assert_equal expected, result
  end

  def test_returns_sum_to_20
    sum = SumEvens.new(20)
    result = sum.result
    expected = 10

    assert_equal expected, result
  end

  def test_returns_sum_to_55
    sum = SumEvens.new(55)
    result = sum.result
    expected = 44

    assert_equal expected, result
  end

  def test_returns_sum_to_1
    sum = SumEvens.new(1)
    result = sum.result
    expected = 0

    assert_equal expected, result
  end

  def test_cm_returns_sum_to_1
    result = SumEvens.result(1)
    expected = 0

    assert_equal expected, result
  end

  def test_cm_returns_sum_to_55
    result = SumEvens.result(55)
    expected = 44

    assert_equal expected, result
  end
end
