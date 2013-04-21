puts "Hello, welcome to the Bytelandian Number Converter!"
puts "Please insert the number you would like to bytelandianize"
number = gets.chomp.to_i

def bytelandian(number)
	first_coin = number/2
	second_coin = number/3
	third_coin = number/4

	if number == 0
		return 1
	else 
		return bytelandian(first_coin) + bytelandian(second_coin) + bytelandian(third_coin)
	end
end

puts "The number of coins it would take to get to zero is......." 
puts bytelandian(number)