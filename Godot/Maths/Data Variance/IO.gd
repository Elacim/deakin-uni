extends Control

signal update_outputs

signal mean_updated
signal median_updated
signal mode_updated
signal standard_deviation_updated
signal standard_error_updated

@onready var user_data : TextEditInputDataset = %'Input-dataset'
@onready var output_node : VBoxContainer = %'Outputs'

@onready var output_interpreter_node := %"Output-InterpretedDataset"

@export var formula_names : Array[StringName] = [
	&"mean",
	&"median",
	&"mode",
	&"standard-dev",
	&"standard-err"
]



"""
class_name LabelOutput extends RichTextLabel

var id = 'mean'
@export var default_text = '- Mean -\n'
set_text_to(new_text):


"""


# @export var formula_nodes : Array[RichTextLabel] = [
@export var formula_nodes : Array[LabelOutput] = [
	%"Output-Mean",
	%"Output-Median",
	%"Output-Mode",
	%"Output-StandardDeviation",
	%"Output-SEM",
] 

#  Match with enum FORMULA
@export var formula_callables : Array[Callable] = [
	Formulas.find_mean,
	Formulas.find_median,
	Formulas.find_mode,
	Formulas.find_standard_deviation,
	Formulas.find_standard_error,
]

# The complied formulas, matching names to fomulas (1:1 matching with formula_names and formula_callables
# Contains the nodes too
var formulas : Dictionary = {}


func _ready() -> void:
	user_data.user_dataset_is_valid.connect(calculate_values_from_dataset)
	
	update_outputs.connect(func(data): output_interpreter_node.set_new_text(str(data["dataset"])))
#	update_outputs.connect(func(data): mean_node.set_new_text(str(data["mean"])))
#	update_outputs.connect(func(data): median_node.set_new_text(str(data["median"])))
#	update_outputs.connect(func(data): mode_node.set_new_text(str(data["mode"])))
#	update_outputs.connect(func(data): standard_dev_node.set_new_text(str(data["standard_deviation"])))
#	update_outputs.connect(func(data): standard_err_node.set_new_text(str(data["standard_error"])))
	


# Called when the user dataset is updated (user_data/%Input-dataset node)
func calculate_values_from_dataset(dataset: Array[float]):
	print("calc values here")
	var data : Dictionary = {}
	data["dataset"] = dataset
	data["mean"] = find_mean(dataset)
	data["median"] = find_median(dataset)
	data["mode"] = find_mode(dataset)
	data["standard_deviation"] = find_standard_deviation(dataset, data["mean"], true)
	data["standard_error"] = find_standard_error(dataset.size(), data["standard_deviation"])
	
	emit_signal("update_outputs", data)



func find_mean(dataset: Array[float]):
	var total : float = 0.0
	for x in dataset:
		total += x
	return (total / dataset.size())


func find_median(dataset: Array[float]) -> float:
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


func find_mode(dataset: Array[float]):
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
func find_standard_deviation(dataset: Array[float], mean: float, is_sample=true):
	# sqrt(sum(x-mean)^2/dataset.count)
	var sum : float = 0.0
	for x in dataset:
		sum += pow( (x - mean), 2 )
	if is_sample:
		return sqrt( sum / (dataset.size() - 1) )
	return sqrt( sum / dataset.size() )


func find_standard_error(dataset_size: int, standard_deviation: float):
	return ( standard_deviation / sqrt( dataset_size ) )
