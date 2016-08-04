@answers = ['you will be cool', 'you will fail', 'you will be very successful', 'you will lose', 'you will win', 'you are a fool', 'you are correct!']

def yes
	puts 'what question do you have for this special 8 ball? put a to ask how I am. put b if you like pie. or type a question that you would like answered: p.s dont put d'
	question = gets.strip

	if question == 'a'
		puts 'I am fine'
	elsif question == 'b'
		puts 3.1415
	elsif question == 'add'
		add_answer
		# puts 'you are bad at following directions'
	else
		continue
	end
end

def continue
	# sports = {first_sport:['you will be cool', 'you will fail', 'you will be very successful', 'you will lose', 'you will win', 'you are a fool']}
	# puts sports.values[0].sample
	puts @answers.sample
	repeat
end

def add_answer
	puts "type your answer"
	new_answer = gets.strip
	@answers << new_answer
	puts @answers
	repeat
end

def hi 
	user_input = gets.strip
	puts 'do you want to make your own answer?'
	if user_input == 'yes'
		add_answer
	elsif user_input == 'no'
		repeat
	end
end
				

def repeat
	print 'do you want to leave press (yes, no): '
	user_input = gets.strip 
	if user_input == 'yes'
		goodbye
	elsif user_input == 'no'
		yes
	else 
		puts 'you need to put a yes or a no'
		repeat
	end
end

def goodbye

	puts 'goodbye'
	exit
end
# puts sports.keys

# puts sports.values 
# while true
# 	yes
# end

yes

