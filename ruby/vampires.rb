puts "How many employees will we be processing today?"
employee_count = gets.chomp.to_i
count = 0
while employee_count > count	
puts "What is your name?"
name = gets.chomp

puts "How old are you?" 
age = gets.chomp

puts "What year were you born?"
birth = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic_choice = gets.chomp

puts "Would you like to enroll in the company’s health insurance?"
insurance_andswer = gets.chomp

done = false
while done == false
	gets "please tell me your your alergies, you can type done when your finished."
	alergy = gets.chomp.downcase
	if alergy == "sunshine" || alergy == "garlic" || alergy == "sun"
		return "Probably a valmpire."
	elsif alergy == "done"
		done = true;
		puts "thanks for taking time to infrom us."
	end
end


puts "Welcome: #{name} to werewolf Inc."
puts "It looks like your #{age} years old."
puts "You were born in: #{birth}."
puts "you Would like to have some garlic bread."
puts "you are also intrested in our insurance program."
count += 1
end