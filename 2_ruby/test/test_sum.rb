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

  def test_returns_sequence
    sum = SumEvens.new(10)
    result = sum.result
    expected = [1, 2, 3, 5, 8]

    assert_equal expected, result
  end
end
