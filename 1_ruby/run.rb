require './lib/project'

print "Enter your end number: "
end_num = gets.chomp.to_i

print "Enter your first multiple: "
mult_1 = gets.chomp.to_i

print "Enter your second multiple: "
mult_2 = gets.chomp.to_i

result = Project.new(end_num, mult_1, mult_2).sum

puts "Your number is #{result}."