require './lib/factor'

print 'Please input the number you want the highest factor for: '
number = gets.chomp.to_i

result = Factor.highest(number)

puts "Your highest factor is #{result}"