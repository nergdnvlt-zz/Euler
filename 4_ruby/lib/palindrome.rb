# This will find the highest palindrome of 2 numbers
class Palindrome
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def result
    @num1 * @num2
  end

  def palindrome?
    return true if result.to_s == result.to_s.reverse
  end
end
