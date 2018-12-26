require 'minitest/pride'
require 'minitest/autorun'
require 'pry'

require './lib/multiples'

class MultiplesTest< MiniTest::Test
  def test_it_exists_and_takes_args
    multiple = Multiple.new(1, 5)

    assert_instance_of Multiple, multiple
  end

  def test_finds_multiple_of_three
    result = Multiple.multiples(3, 10)

    projected = [3, 6, 9]
    assert_equal result, projected
  end

  def test_finds_multiple_of_five
    result = Multiple.multiples(5, 10)

    projected = [5]
    assert_equal result, projected
  end
end