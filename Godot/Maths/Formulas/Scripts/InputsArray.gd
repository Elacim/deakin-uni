class_name FormulaInputArray extends Resource

signal all_inputs_are_valid(unknown: FormulaInput)
signal more_inputs_needed

@export var inputs : Array[FormulaInput]:
	set(value):
		inputs = value
		validate_inputs()

## A 1:1 match to 'inputs'. If true, that input is currently valid, false means not. 
## Access like valid_inputs[FormulaInput]
var valid_inputs : Dictionary = {}

## Returns the FormulaInput node associated with a given variable name. 
## Such as names_to_input["c"] grabs the FormulaInput associated with "c"
var name_to_input : Dictionary = {}

## A master table of all the types of variables (types given by FormulaInput.INPUT_TYPE)
## Using this, we can easily perform checks like finding the amount of unknown variables
var types : Dictionary = {
	"user" : 		[],	
	"constant" : 	[],
}



func set_unknown():
	pass

func validate_inputs():
	
	# Clear all the variables before adding the updated list (don't erase keys though)
	for key in types.keys():
		types[key].clear()
	
	for inp in inputs:
		name_to_input[ inp.input_var.to_lower() ] = inp
		valid_inputs[inp] = false
		inp.processed_valid_input.connect( _on_receive_valid_input )
		inp.invalid_input_received.connect( _on_receive_invalid_input )
		# Using the names from INPUT_TYPE's keys, we grab the index using the FormulaInput.type 
#		types[ FormulaInput.INPUT_TYPE.keys()[ inp.type ] ].append(inp)
		match inp.type:
			FormulaInput.INPUT_TYPE.user:		types["user"].append(inp)
			FormulaInput.INPUT_TYPE.constant:	types["constant"].append(inp)


# Received from FormulaInputs.processed_valid_input
func _on_receive_valid_input(_valid_input: float, from: FormulaInput) -> void:
	valid_inputs[from] = true
	check_input_count()
# Received from FormulaInputs.invalid_input_received
func _on_receive_invalid_input(_error_msg: String, from: FormulaInput) -> void:
	valid_inputs[from] = false
	check_input_count()


## Checks the input count and emits an all-clear signal or an error signal
func check_input_count() -> void:
	var unknowns : Array[FormulaInput] = []
	for inp in inputs:
		if (inp.type == FormulaInput.INPUT_TYPE.user) and (valid_inputs[inp] == false):
			unknowns.append(inp)

	# Bad, there should only ever be one unknown. This should never be able to happen
#	assert( unknowns.size() >= 1, "How did this happen? Something must have gone wrong with disabling LineEdits after input is placed in the other known variable boxes." )
	
	# Only one unknown is allowed, so don't check for more.
	if unknowns.size() == 1:
		all_inputs_are_valid.emit( unknowns[0] )
	
	# Either no inputs are found or there are more than 1 unknowns
	else:
		# The signal is unused as of yet - need logging or something, probably not.
		more_inputs_needed.emit()
		

## When parse_input is successful, this signal is emitted to FormulaInputArray.
#signal processed_valid_input(valid_input: float)
## When parse_input is unsuccesful
#signal invalid_input_received(error: String)

func _on_receive_calculated_value(value: float, _error: String, unknown: FormulaInput) -> void:
	unknown.value = value
