class Multiple
  def self.multiples(number, end_num)
    new(number, end_num).multiples
  end

  def multiples
    arr = [*1..@end_num-1].reverse
    arr.map do |num|
      if num % @number == 0
        num
      end
    end.compact.reverse
  end

  private

  def initialize(number, end_num)
    @number = number
    @end_num = end_num
  end
end