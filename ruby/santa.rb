class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender, :name
	def initialize(gender = "N/A", ethnicity = "N/A", age = 0, person_name = "N/A")
		puts "Initializing Santa instance ..."
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
john = Santa.new("male", "Latino", 40, "john")
p john.age
p john.gender
p john.ethnicity
john.get_mad_at("Rudolph")
john.speak
john.eat_milk_and_cookie("sugar")
john.celebrate_birthday
john.gender = "Memesexual"
p john