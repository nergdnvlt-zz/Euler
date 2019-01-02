require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

require './lib/fibonacci'

# Test for the fibonacci class.
class FibonacciTest < MiniTest::Test
  def test_it_exists
    fib = Fibonacci.new(10)
    assert_instance_of Fibonacci, fib
  end

  def test_returns_sequence
    fib = Fibonacci.new(10)
    result = fib.sequence
    expected = [1, 2, 3, 5, 8]

    assert_equal expected, result
  end

  def test_returns_sequence_to_20
    fib = Fibonacci.new(20)
    result = fib.sequence
    expected = [1, 2, 3, 5, 8, 13]

    assert_equal expected, result
  end

  def test_returns_sequence_to_55
    fib = Fibonacci.new(55)
    result = fib.sequence
    expected = [1, 2, 3, 5, 8, 13, 21, 34, 55]

    assert_equal expected, result
  end

  def test_returns_sequence_to_1
    fib = Fibonacci.new(1)
    result = fib.sequence
    expected = [1]

    assert_equal expected, result
  end

  def test_returns_sequence_to_2
    fib = Fibonacci.new(2)
    result = fib.sequence
    expected = [1, 2]

    assert_equal expected, result
  end
end
