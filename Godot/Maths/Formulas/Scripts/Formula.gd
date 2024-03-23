class_name Formula extends Resource

"""
A base class for constructing formulas

Add the title, input variable names, and variable descriptions.
From this, a set of nodes is created that fits all the given  


"""

signal result_calculated(result: float, error: StringName, for_node: FormulaInput)

## Characters blacklisted from being being replaced in calculate_unknown()
const blacklisted_characters := ["-", "+", "*", "/", "(", ")", "()"] 

## The title of the formula (such as 'Concentration in grams per Litre')
@export var title : StringName

## An optional icon for the main menu tab
@export var icon : Texture = null

## An array of all the possible FormulaInputs, sorted into discrete categories (like 'user', 'constant', etc.)
@export var inputs : FormulaInputArray:
	set(new):
		inputs = new
		inputs.all_inputs_are_valid.connect( _on_receive_all_inputs_valid )
		inputs.more_inputs_needed.connect( _on_receive_more_inputs_needed )
		result_calculated.connect( inputs._on_receive_calculated_value )

## The maximum amount of variables within an equation. I don't believe this can be past 0 
## unless we implement a math parser/graphing calculator
@export var max_variable_count : int = 1

## Formula-dependent value that allows
@export var max_optional_args : int

## A representation of the formula string for display-purposes only
@export var display_formula_string : StringName = ""

## Any extra functions can be called with this
#@export var extra_functions : Array[Callable]

@export var variations : FormulaVariations


## The created set of nodes pass the user input into this function and return the result. 
## Unknowns can be anything except a number.

func get_input_count() -> int:
	return inputs.inputs.size()


## Using the values in FormulaInputArray and the unknown, this calculates the unknown. 
func calculate_unknown(unknown: FormulaInput) -> Array:
	var unknown_key : String = unknown.input_var.to_lower()  # variable name like C, n, or V
	var expression : String = variations.formulas[ unknown_key ]
	
	for character in variations.formulas[ unknown_key ]:
		if character not in blacklisted_characters:
			# Replace the formula variation characters with the value
			# e.g. n/V -> Replace n with 0.2 and V with 0.1, ignoring the blacklisted "/" character
			var f_input : FormulaInput = inputs.name_to_input[ character.to_lower() ]
			expression = expression.replacen( character, "%f" % f_input.value )
	return FormulaTools.calculate_expression( expression )	



## Called when InputsArray.all_inputs_are_valid is emitted. Processes the formula calculation.
func _on_receive_all_inputs_valid(unknown: FormulaInput) -> void:
	var result = calculate_unknown( unknown )
	var value : float = result[0]
	var error : StringName = result[1]
	result_calculated.emit( value, error, unknown )


## Called when InputsArray.more_inputs_needed is emitted. For logging purposes.
func _on_receive_more_inputs_needed() -> void:
	pass
