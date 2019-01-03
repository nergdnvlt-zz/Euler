# This class will build a factor line
class Factor
  def initialize(fac_number)
    @fac_number = fac_number
    @factor_line = []
  end

  def first_factor
    if divisible_by_two?
      grab_nums(2)
    elsif divisible_by_three?
      grab_nums(3)
    elsif divisible_by_five?
      grab_nums(5)
    elsif divisible_by_seven?
      grab_nums(7)
    elsif divisible_by_eleven?
      grab_nums(11)
    end
  end

  def factor_line
    first_factor
  end

  def divisible_by_two?
    (@end_number % 2).zero?
  end

  def divisible_by_three?

  end

  def grab_nums(factor)
    @factor_line << factor
    @factor_line << (@fac_number / factor)
  end
end
