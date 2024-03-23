class_name Formulas extends Resource

static func find_mean(dataset: Array[float]):
	var total : float = 0.0
	for x in dataset:
		total += x
	return (total / dataset.size())


static func find_median(dataset: Array[float]) -> float:
	var sorted : Array[float] = dataset.duplicate()
	sorted.sort()
	var count : float = sorted.size() / 2
	
	# If it's got a decimal > 0, it's a floating point
	if fmod( float(count), 1.0) == 0.0:
		# e.g. [1,2,3], n.size()/2=1.5, round up -> median=2
		return dataset[ int(ceilf(count)) ]
	else:
		# e.g. [1,2,3,4], n.size()/2 -1 and +1=, 2 + 3 / 2 = 2.5
		# We find each data point around the middle, add them, then average them
		return (dataset[(count / 2) - 1] + dataset[(count / 2) + 1]) / 2  # take the average


static func find_mode(dataset: Array[float]):
	var counts : Dictionary = {}
	for x in dataset:
		if !(counts.has(x)): 
			counts[x] = 0
		counts[x] += 1
		
	var most_common : Array = [0, 0]  # [number, count]
	for c in counts:
		if counts[c] > most_common[1]:
			most_common[0] = c
			most_common[1] = counts[c]
	return most_common[0] # return the most common number


# Finds the standard deviation. 'is_sample' determines if it is a sample (n-1) or a population (n)
static func find_standard_deviation(dataset: Array[float], mean: float, is_sample=true):
	# sqrt(sum(x-mean)^2/dataset.count)
	var sum : float = 0.0
	for x in dataset:
		sum += pow( (x - mean), 2 )
	if is_sample:
		return sqrt( sum / (dataset.size() - 1) )
	return sqrt( sum / dataset.size() )


func find_standard_error(dataset_size: int, standard_deviation: float):
	return ( standard_deviation / sqrt( dataset_size ) )
