highway = {
	carpool_lane: { 
		car1: ["Joe", "Moe", "Doe"],
		car2: ["Ricky"], # ooooh he is in the carpool lane with no passengers
		car3: ["Becky", "John", "Tonya", "George"]
	},
	fast_lane: { 
		car: ["BatMan"], # I am Batman, going fast
		suv: ["The Rock"], # Can you smell the rock burnning rubber
		pickup: ["Bod the Builder"] # Driving fast to go fix it.
	},
	slow_lane: { 
		truck: ["Cleatus, 'Long Haul', Masterson"], # Yee Haw
		minivan: ["Uncle Ben", "Aunt May", "Peter"], # spiderman be nice to your uncle
		car: [] # must be one of them new fangled robot cars by them their google folks
	},
	sholder: ["A Boken down Car"]
}
highway[:carpool_lane][:car1] # meet the brothers Joe Moe and Doe
highway[:carpool_lane][:car3][2] # Hello Tonya
highway[:carpool_lane][:car2].push("Cop") # busted
highway[:slow_lane][:car].reverse # now Peter is driving.
highway[:fast_lane][:car][0] = "Robin" # looks like Robin is tagging Batman out