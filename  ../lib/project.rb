require './lib/multiples'
require 'pry'

class Project

  def self.sum(top_num, multiple_1, multiple_2)
    new(top_num, multiple_1, multiple_2).sum
  end

  def sum
    full_arr.sum
  end

  private

  def initialize(top_num, multiple_1, multiple_2)
    @mult_1 = Multiple.multiples(multiple_1, top_num)
    @mult_2 = Multiple.multiples(multiple_2, top_num)
  end

  def full_arr
    (@mult_1 + @mult_2).sort.uniq
  end
end