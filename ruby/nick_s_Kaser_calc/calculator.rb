# Write a calculate method
def calculate(integer, operator, integer2)
	if operator == "+"
			return integer + integer2
		elsif operator == "-"
			return integer - integer2
		elsif operator == "*"
			return integer * integer2
		elsif operator == "/"
			return integer / integer2
		else
		puts "sory invalid operator."		
	end
end
user_calc