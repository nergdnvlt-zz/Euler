require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

require './lib/palindrome'

# This will test the palindrome class
class PalindromeTest < MiniTest::Test
  def test_it_exists
    palindrome = Palindrome.new(11, 3)

    assert_instance_of Palindrome, palindrome
  end

  def test_it_multiplies
    palindrome = Palindrome.new(11, 3)
    result = palindrome.result

    assert_equal 33, result
  end

  def test_it_is_palindrome
    palindrome = Palindrome.new(11, 3)
    result = palindrome.palindrome?

    assert_equal true, result
  end
end