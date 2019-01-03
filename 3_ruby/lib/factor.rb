require './lib/first_factor'

# This class will build a factor line
class Factor
  attr_reader :factor_line

  def self.highest(fac_number)
    new(fac_number).highest
  end

  def highest
    @factor_line.last
  end

  private

  def initialize(fac_number)
    @fac_number = fac_number
    @first = FirstFactor.first(fac_number)
    @new_divisor = @fac_number / @first
    @next_prime = 1
    @factor_line = build_factor_line
  end

  def build_factor_line
    factor_line = [@first]
    until @new_divisor == 1
      @next_prime = FirstFactor.first(@new_divisor)
      factor_line << @next_prime
      @new_divisor /= @next_prime
    end
    factor_line
  end
end
