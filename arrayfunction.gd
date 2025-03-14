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
