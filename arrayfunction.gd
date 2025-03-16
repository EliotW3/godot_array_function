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

static func count_if_num(numbers : Array, type : int, criteria : float) -> int:
	# take array as input, "type" represents ><= or 4 for all numbers, compare against criteria
	
	var count = 0
	
	if type == 4:
		for i in range(0,numbers.size()):
			if typeof(numbers[i]) == 2 or typeof(numbers[i]) == 3:
				count += 1
	else:
		# handle criterias
		if type == 1:
			# less than criteria
			for i in range(0,numbers.size()):
				if typeof(numbers[i]) == 2 or typeof(numbers[i]) == 3:
					if float(numbers[i]) < criteria:
						count += 1
		elif type == 2:
			# equal to criteria
			for i in range(0,numbers.size()):
				if typeof(numbers[i]) == 2 or typeof(numbers[i]) == 3:
					if is_equal_approx(float(numbers[i]), criteria):
						count += 1
		elif type == 3:
			# more than criteria
			for i in range(0,numbers.size()):
				if typeof(numbers[i]) == 2 or typeof(numbers[i]) == 3:
					if float(numbers[i]) > criteria:
						count += 1

	return count
	
