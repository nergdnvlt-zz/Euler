require 'minitest/pride'
require 'minitest/autorun'
require 'pry'

require './lib/multiples'

class MultiplesTest< MiniTest::Test
  def test_it_exists
    multiple = Multiple.new()

    assert_instance_of Multiple, multiple
  end

  def test_finds_multiple_of_three
    multiples = Multiple.new(3, 10)

    projected = [3, 6, 9]
    assert_equal multiples, projected
  end
end
