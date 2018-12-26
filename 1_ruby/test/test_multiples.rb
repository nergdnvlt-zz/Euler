require 'minitest/pride'
require 'minitest/autorun'
require 'pry'

require './lib/multiples'

class MultiplesTest< MiniTest::Test
  def test_it_exists_and_takes_args
    multiple = Multiple.new(1, 5)

    assert_instance_of Multiple, multiple
    assert_equal multiple.number, 1
    assert_equal multiple.end_num, 5
  end

  def test_finds_multiple_of_three
    multiple = Multiple.new(3, 10)

    projected = [3, 6, 9]
    result = multiple.multiples
    assert_equal result, projected
  end
end
