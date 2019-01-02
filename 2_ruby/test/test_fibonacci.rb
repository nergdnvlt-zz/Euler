require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

require './lib/fibonacci'

class FibonacciTest<MiniTest::Test
  def test_it_exists
    fib = Fibonacci.new()
    assert_instance_of Fibonacci, fib
  end
end
