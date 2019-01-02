require './lib/sum_evens'

print 'Enter an end number: '
end_num = gets.chomp.to_i

result = SumEvens.result(end_num)

puts "Your number is #{result}."
