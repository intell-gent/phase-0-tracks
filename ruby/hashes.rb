# Prompt the designer/user for all of this information.
client = {}
puts "Hello new client welcome to design profile."
# name, 
puts "what is your Name?"
	client_name = gets.chomp
	client["client_name"] = client_name
# age, 
puts "What is your age?"
	client_age = gets.chomp.to_i
	# Convert any user input to the appropriate data type.
	client["client age"] = client_age

# number of children, 
puts "number of children?"
	children_count = gets.chomp.to_i
	# Convert any user input to the appropriate data type.
	client["children"] = children_count
	
# decor theme
client["decor theme"] = []
loop do
	puts "What type of decore types you want? type done if your finshed" 
	answer = gets.chomp
	if answer == nil 
	  puts "please enter a valid input"
	  answer = gets.chomp
	end
break if answer.downcase == "done"
client["decor theme"] << answer
end

if client["decor theme"].length == 0 
  client["decor theme"] = "none"
end

# pool?

loop do
puts "would you you like the option to put in a pool?"
pool = gets.chomp
# Convert any user input to the appropriate data type.
	if pool.downcase == 'yes'
		pool = true
		client["pool choice"] = pool
		break
	elsif pool.downcase == 'no'
		pool = false
		client["pool choice"] = pool
		break
	else
		puts "sorry i did not understad, was that yes or no?"
	end
end

# Print the hash back out to the screen when the designer has answered all of the questions.
puts "wher is what he got for your file."
p client
# Give the user the opportunity to update a key. 
puts "would you like to make any changes? if not just say none."
answer = gets.chomp
# If the designer says "none", skip it. 
if answer =! "none" || answer == 'yes'
	puts "what key would you like to update"
	old_key = gets.chomp
	puts "what would you like the new key to be"
	new_key = gets.chomp
	client[new_key] = client.delete old_key
end

# if the designer enters "decor_theme" your program should ask for a new value 
# and update the :decor_theme key. 
# (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.)

# Print the latest version of the hash, and exit the program.
p client
