require './lib/project'

print 'Enter your end number: '
end_num = gets.chomp.to_i

print 'Enter your first multiple: '
mult1 = gets.chomp.to_i

print 'Enter your second multiple: '
mult2 = gets.chomp.to_i

result = Project.sum(end_num, mult1, mult2)

puts "Your number is #{result}."
