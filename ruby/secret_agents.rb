# def a method
def encrypt(string)
# set a counter = to 0
counter = 0
# iterate thourgh a string one index at a time
while counter < string.length
	# for each index set the charactere to the next character
	string[counter] = string[counter].next
	# incrament the counter
	counter += 1
end
string
end
puts encrypt('abc')

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
puts decrypt('bcd')