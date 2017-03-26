# old code
# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yell_happily(words)
#     words.upcase + "!" + " :)"
#   end
#   # Driver Code
#   yell_happily("hello")
#   yell_angrily("good buy")
# end
module Shout
	def yell(words)	
		words + "!!!"
	end
end

class Angry
	include Shout
end

class Happy
	include Shout
end
# driver code
angry = Angry.new
p angry.yell("hello :(".upcase)

happy = Happy.new
p happy.yell("hello :)")
