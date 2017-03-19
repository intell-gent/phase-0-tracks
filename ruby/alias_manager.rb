# make a spy name method

# User interface
def spy_name_grab
	name_list = []
	alias_list = []
	loop do
		# Ask a question
	puts "Give me a name I will give you your alias?"
	# get a name
	name_answer = gets.chomp
	if name_answer == "done"
		break
	end
	puts "Type done when you are done giving names."
	name_list.push(name_answer)
	alias_list.push(mid_name_rev(name_answer.downcase))
	end
		count = 0
		until count == name_list.length
			puts "Your name was: #{name_list[count]}"
			puts "Your alias was: #{alias_list[count]}"
			count += 1
	  end
end

def mid_name_rev(spy_name)
	# middle name edge case
	spy_name = spy_name.split(' ')
	if spy_name.length < 3
		spy_name.push(spy_name[1])
		spy_name[1] = " "
	end
	# Swapping the first and last name.
	spy_name = spy_name.reverse
	spyify(spy_name)
end

def spyify(spy_name)
	# Makes a full name hash and splits the chars
	full_name = {
		first_name: spy_name[0].chars,
		middle_name: spy_name[1].chars,
		last_name: spy_name[2].chars
	}
	# Changing all of the vowels / consonants passed to encrypt
	if full_name [:middle_name][0] == " "
		full_name[:middle_name] = " "
	else
		full_name[:middle_name] = encrypt(full_name[:middle_name])
		full_name[:middle_name][0].upcase!
		full_name[:middle_name] = full_name[:middle_name].join
		full_name[:middle_name] = " " + full_name[:middle_name] + " "
	end
	 full_name[:first_name] = encrypt(full_name[:first_name])
	 full_name[:first_name][0].upcase!
	  full_name[:first_name] = full_name[:first_name].join
	 full_name[:last_name] = encrypt(full_name[:last_name])
	 full_name[:last_name][0].upcase!
	  full_name[:last_name] = full_name[:last_name].join
		join_and_store(full_name)
end

def join_and_store(name_hash)
	name_hash = name_hash[:first_name] + name_hash[:middle_name] + name_hash[:last_name]
	name_hash
end

def encrypt(arr)
	count = 0
	while count < arr.length
		arr[count] = next_vowel(arr[count])
		count += 1
	end
	arr
end

def next_vowel(letter)
	vowels = ["a", "e", "i", "o", "u"]
			if vowels.include?(letter)
				if letter == "u"
					letter = "a"
				else
					letter = vowels[vowels.index(letter) + 1]
				end
			else
				letter = next_consonant(letter)
			end
			letter
end

def next_consonant(letter)
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", 
								"l", "m", "n", "p", "q", "r", "s", "t", 
								"v", "w", "x", "y", "z"]
	if letter == "z"
		letter = "b"
	else
		letter = consonants[consonants.index(letter) + 1]
	end
	letter
end
spy_name_grab
 # Felicia abc Torres
 # Felicia Torres