@tool
extends EditorPlugin
class_name ArrayFunction

static func sum(numbers : Array) -> float:
	
	var total : float = 0.0
	
	# check each value in numbers Array, if an integer or a float, add to the total
	
	for i in range(0,numbers.size()):
		
		# 2 for integers, 3 for floats/real
		if typeof(numbers[i]) == 2 or typeof(numbers[i]) == 3:
			total += numbers[i]
	
	
	return total

static func product(numbers : Array) -> float:
	# returns the product of all numerical values in the array
	var total : float = 0.0
	
	# find first numerical value
	for i in range(0,numbers.size()):
		if typeof(numbers[i]) == 2 or typeof(numbers[i]) == 3:
			total = numbers[i]
			numbers.remove_at(i) # remove the first numerical value found
	
	# multiply all remaining numbers together
	for i in range(0,numbers.size()):
		if typeof(numbers[i]) == 2 or typeof(numbers[i]) == 3:
			total = total * numbers[i]
	
	return total
