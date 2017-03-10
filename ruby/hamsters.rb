def method_name
# hamster's name (the clerk names any hamsters 
puts "What is the hamsters name?"
hamster_name = gets.chomp
# volume level from 1 to 10 
puts "How noisy is the hamster? (1 - 10)"
volume_level = gets.chomp.to_i
# fur color
puts "What is the hamsters fur color?"
fur_color = gets.chomp
# whether the hamster is a good candidate for adoption
puts "Is the hamster a good candidate for adoption?"
candidate_possibility = gets.chomp
	if candidate_possibility == "yes"
		candidate_possibility = true
	else 
		candidate_possibility = false
	end
# estimated age
puts "How old is the hamster?"
estimated_age = gets.chomp.to_i
	if estimated_age == 0
		estimated_age = nil
	end
puts "The name of the hamster is, #{hamster_name}."
puts "The volume of the hamster is, #{volume_level}."
puts "The color of the hamster is, #{fur_color}."
	if candidate_possibility == true
		puts "Your hamster is a good candidate."
	else
		puts "Your hamster is not a good candidate."
	end
	if estimated_age == nil
			puts "Your hamster age is unknown."
	else
		puts "Your hamster is #{estimated_age} years old."
	end
end
method_name