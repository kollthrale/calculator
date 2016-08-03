require 'pry'

def get_first_number
	puts 'what is the first number'
	@first_number = STDIN.gets.strip.to_i
	if @first_number == 0
		get_first_number
	end
	get_operator
end

def get_operator
	puts 'what is the operator, type: +, -, *, / : '
	@operator = STDIN.gets.strip
	get_second_number
end

def get_second_number
	puts 'what is the second number'
	@second_number = STDIN.gets.strip.to_i
	if @second_number == 0
		get_second_number
	end
	calculate
end


def calculate
	@output = case @operator
		when "+"
			@first_number + @second_number
		when "-" 
			@first_number - @second_number
		when "*"
			@first_number * @second_number
		when "/"
			@first_number / @second_number
		else
			puts "operators must be +, -, *, /"
	end
	puts "The answer is : #{@output}"
	get_first_number
end


get_first_number

