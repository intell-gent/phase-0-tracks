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
# set a counter = to 0
# iterate thourgh a string one index at a time
# for each index set the charactere to the previous character
# incrament the counter