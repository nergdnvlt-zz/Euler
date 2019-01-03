# Given a number this class will find the first prime factor
class FirstFactor
  def self.first(fac_num)
    new(fac_num).first
  end

  def first
    init = 2
    until_first(init)
    @first_num
  end

  private

  def initialize(fac_num)
    @fac_num = fac_num
    @first_num = 0
  end

  def divisible?(pos_factor)
    (@fac_num % pos_factor).zero?
  end

  def until_first(init)
    until @first_num != 0
      @first_num = init if divisible?(init)
      init += 1
    end
  end
end
