class Multiple
  attr_reader :number, :end_num

  def initialize(number, end_num)
    @number = number
    @end_num = end_num
  end

  def multiples
    arr = [*1..@end_num-1].reverse
    arr.map do |num|
      if num % @number == 0
        num
      end
    end.compact.reverse
  end
end