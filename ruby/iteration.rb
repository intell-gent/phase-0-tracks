# Method that takes a block

def the_blocker
  puts "This a lie."
  yield("thing1", "thing2")
  puts "I shal not yield!!!"
end
# 3.times { the_blocker { |str1, str2| puts "I am #{str1}, and i am #{str2}."} }

# Declare array and hash


cities = ["new york", "london", "tokyo", "san francisco"]

actors_and_movies = {
  double_indemnity: "Fred MacMurray",
  logan: "Hugh Jackman",
  goldfinger: "Sean Connery",
  goldeneye: "Pierce Brosnan"
}

# Print array
p cities

# Call each and map! on array
cities.each {|x| puts x.upcase}

cities.map! {|x| puts x * 2}

# Print hash
p actors_and_movies

# Call each on hash
actors_and_movies.each {|movie, actor| puts "#{movie.upcase} starred #{actor}" }

# Release 2 

 letters = ("a".."z").to_a

 numbers_spelled = {
  one: 1,
  two: 2,
  three: 3,
  four: 4,
  five: 5
 }


# 1, (Delete first half of alphabet) / delete if number > 3
p letters.delete_if {|del| del < "m" }

p numbers_spelled.delete_if {|num, value| value > 3}


# Get fresh array
letters = ("a".."z").to_a

 numbers_spelled = {
  one: 1,
  two: 2,
  three: 3,
  four: 4,
  five: 5
 }


#2 Select o, u / select 3 from hash
p letters.select {|letter| letter =~ /[aeiou]/ }

p numbers_spelled.select {|num, value| value == 3 }

# 3 keep if letter if < "g" and > than "b", keep if numbers < 3

p letters.keep_if {|letter| letter < "g" && letter > "b"} 

p numbers_spelled.keep_if {|num, value| value < 3 }

# Get fresh array
letters = ("a".."z").to_a

 numbers_spelled = {
  one: 1,
  two: 2,
  three: 3,
  four: 4,
  five: 5
 }

#4 

p letters.drop_while {|letter| letter < "q" }

p numbers_spelled.drop_while {|num, value| value < 4}