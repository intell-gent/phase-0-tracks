# create a user interface
def user_calc
  calculations = []
  results = []
  counter = 0
  count = 0
	puts "welcome to your calculator."
	loop do 
	puts "what shal i calculate?"
	answer = gets.chomp
	# splits the answer
	break if answer.downcase == "done"
	calculations.push(answer)
	answer = answer.split(" ")
	result = calculate(answer[0].to_f, answer[1], answer[2].to_f)
	results.push(result)
	counter += 1
	end
	puts "here are the #{counter} calculations performed: "
	until count == counter
		puts "#{calculations[count]} = #{results[count]}"
		count += 1
	end
end

# Write a calculate method
def calculate(integer, operator, integer2)
	if operator == "+"
			return integer + integer2
		elsif operator == "-"
			return integer - integer2
		elsif operator == "*"
			return integer * integer2
		elsif operator == "/"
			return integer / integer2
		else
		puts "sory invalid operator."		
	end
end
user_calc