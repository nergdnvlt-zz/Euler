require './lib/fibonacci'
require 'pry'

# This class will sum all even numbers in the Fibonacci sequence
class SumEvens
  def self.result(end_num)
    new(end_num).result
  end

  def result
    evens.sum
  end

  private

  def initialize(end_num)
    @seq = Fibonacci.sequence(end_num)
  end

  def evens
    @seq.delete_if(&:odd?)
  end
end
