# Finds the fibonacci sequence under a given input
class Fibonacci
  def initialize(end_num)
    @end_num = end_num
    @seq = [1]
  end

  def sequence
    return @seq if @end_num == 1

    build_seq[0..-2]
  end

  def build_seq
    until @seq[-1] > @end_num
      @seq << @seq[0] + @seq[0] if @seq.length == 1
      @seq << @seq[-1] + @seq[-2]
    end
    @seq
  end
end
