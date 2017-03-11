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
until done == true
	puts "please tell me more of your your allergies. if you are finished you can type done."
	allergy = gets.chomp.downcase
	if allergy == "sunshine" || allergy == "garlic" || allergy == "sun"
		puts "your allergic to #{allergy}"
		puts "Probably a valmpire."
		valmpire = true
	elsif allergy == "done"
		puts "thanks for taking time to infrom us."
		done = true;
	else
		puts "ok so your allergic to #{allergy} good to know"
	end
end

puts "Welcome: #{name} to werewolf Inc."
puts "It looks like your #{age} years old."
puts "You were born in: #{birth}."
if garlic_choice == "no" 
	puts "you Would not like to have some garlic bread."
elsif garlic_choice == "yes"
	puts "you Would like to have some garlic bread."
elsif garlic_choice != "no" || garlic_choice != "yes"
	puts "you did not ansewer with yes or no."
else
	puts "i did not understand your garlic choice."
end
if insurance_andswer == "no" 
	puts "you are not intrested in our insurance program."
elsif insurance_andswer == "yes"
	puts "you are intrested in our insurance program."
else
	puts "i did not understand your insurance choice."
end
count += 1
if garlic_choice.downcase == "no" && valmpire == true
	puts  "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end
end