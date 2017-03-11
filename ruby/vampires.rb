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
valmpire = false
done = false
while done == false
	gets "please tell me your your allergies, you can type done when your finished."
	allergy = gets.chomp.downcase
	if allergy == "sunshine" || allergy == "garlic" || allergy == "sun"
		puts "Probably a valmpire."
		valmpire = true
	elsif allergy == "done"
		done = true;
		puts "thanks for taking time to infrom us."
	end
end

puts "Welcome: #{name} to werewolf Inc."
puts "It looks like your #{age} years old."
puts "You were born in: #{birth}."

count += 1
if garlic_choice.downcase == "no" && valmpire == true
	puts  "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end
end