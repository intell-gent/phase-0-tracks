class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender, :name
	def initialize(gender = "N/A", ethnicity = "N/A", age = 0, person_name = "N/A")
		puts "___________________________________________________________________"
		puts "Initializing Santa instance ..."
		puts "___________________________________________________________________"
		@name = person_name
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", 
													"Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookie(cookie)
		puts "That was a good #{cookie}!" 
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(deer_name)
		@reindeer_ranking.delete(deer_name)
		@reindeer_ranking << deer_name
	end

	# setters
	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

	# getters
	# def age
	# 	@age
	# end
	# def ethnicity
	# 	@ethnicity
	# end
end

# Driver code
# john = Santa.new("male", "Latino", 40, "john")
# p john.age
# p john.gender
# p john.ethnicity
# john.get_mad_at("Rudolph")
# john.speak
# john.eat_milk_and_cookie("sugar")
# john.celebrate_birthday
# john.gender = "Memesexual"
# p john

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", 
												"prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_names = ["niki", "Joe", "jane", "tomy", "francis", "jewl", "kat", "lauren", "pat", "bob", "ana"]
rand(1..15).times do
	santa = Santa.new(example_genders[rand(0..example_genders.length - 1)], example_ethnicities[rand(0..example_ethnicities.length - 1)], rand(0..140), example_names[rand(0..example_names.length - 1)] ) 
	santas << santa
	puts "--------------------------------------------------------"
	puts "Here is a new santa"
	p santa
	puts "--------------------------------------------------------"
end