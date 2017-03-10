# def a method
def encrypt(string)
# set a counter = to 0
counter = 0
# iterate thourgh a string one index at a time
while counter < string.length
	# for each index set the charactere to the next character
	string[counter] = string[counter].next unless string[counter] == "z"
	if string[counter] == "z"
	string[counter] = "a"
	end
	# incrament the counter
	counter += 1
end
string
end

# def a method
def decrypt(string)
# set a counter = to 0
	counter = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
# iterate thourgh a string one index at a time
	while counter < string.length
		# for each index set the charactere to 
		#the previous character
		string[counter] = alphabet[alphabet.index(string[counter]) - 1]
		# incrament the counter
		counter += 1
	end
	string
end
# puts encrypt("abc") # bcd
# puts encrypt("zed") # afe
# puts decrypt("bcd") # abc
# puts decrypt("afe") # zed
# # evaluate the encrypt method first and returns the string
# # then decrypt is just passed the string from encrypt
# puts decrypt(encrypt("swordfish"))

# Asks a secret agent (the user) whether they would 
puts "would you like to encrypt or decrypt your password?"
answer = gets.chomp.downcase
until answer == "encrypt" || answer == "decrypt"
	puts "your input was invalid."
	puts "would you like to encrypt or decrypt your password?"
	answer = gets.chomp.downcase
end
# Asks them for the password
puts "Please enter your password?"
password = gets.chomp
# Conducts the requested operation,
if answer == 'encrypt'
	puts encrypt(password)
elsif answer == "decrypt"
	puts decrypt(password)
end 
