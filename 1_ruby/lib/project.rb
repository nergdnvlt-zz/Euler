require './lib/multiples'
require 'pry'

class Project
  def initialize(top_num, multiple_1, multiple_2)
    @mult_1 = Multiple.new(multiple_1, top_num).multiples
    @mult_2 = Multiple.new(multiple_2, top_num).multiples
  end

  def full_arr
    (@mult_1 + @mult_2).sort.uniq
  end

  def sum
    full_arr.sum
  end
end