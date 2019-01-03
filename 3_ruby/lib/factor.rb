require './lib/first_factor'
# This class will build a factor line
class Factor
  attr_reader :first
  def initialize(fac_number)
    @fac_number = fac_number
    @first = FirstFactor.first(fac_number)
    @factor_line = []
  end
end
