class_name FormulaInput extends Resource

## When parse_input is successful, this signal is emitted to FormulaInputArray.
signal processed_valid_input(valid_input: float, from: FormulaInput)
## When parse_input is unsuccesful
signal invalid_input_received(error: String, from: FormulaInput)

## The available input types
enum INPUT_TYPE {
	user,	 	# input set by the user, can be an expression. If one is left empty, assumed to be unknown
	constant,	# an immutable constant
	optional,
}

## The type of INPUT_TYPE the input is
@export var type : INPUT_TYPE = INPUT_TYPE.user

## The names of the input (such as C, V, R)
@export var input_var : StringName

## The name of the input (such as Concentration (g/L), Volume (m^3), Gas Constant). 
## Used for textbox placeholder text
@export var input_shorthand : StringName

## An optional description of the given input (such as 'Concentration is the product of n/V')
@export var input_desc : StringName

## Will be overriden by user unless the INPUT_TYPE is 'constant'
@export var value : float

## What unit does this input require? Celcius? Kelvin? Put the syntax often used, for example
## '5K' (5 kelvin), '25C' (25 degrees celcius), '0.4m3' (0.4 meters cubed). 
## If you put K as the req. unit, and then an expression with '25C', that '25' will be converted to Kelvin
@export var required_unit : StringName:
	set(new_unit): required_unit = new_unit.to_lower()


## A RegEx string that matches to invalid characters ([A-Z][a-z])
const RegExCatchInvalids : StringName = "[A-Za-z]"
var regex_char_remover : RegEx = RegEx.create_from_string( RegExCatchInvalids )

var error : String

## What is the required formula to go to this? Put it as an expression. 
## '%s' is a substitue for user input. 
## e.g. Converting celcius to Kelvin is "%s + 273.15"
## This allows us to easily add new conversions without putting in new if-statements in
## parse_input() for every new conversion added
const CONVERSION_EXPRESSIONS = {
	# Temperature
	"c" : {"output_unit": "k", "expression": "%s + 273.15"},  # celcius to kelvin
	"k" : {"output_unit": "c", "expression": "%s - 273.15"},  # kelvin to celcius
	
	# Litres
	"ml" : {"output_unit": "L", "expression": "%s / 1000"},  # mL to Litres
	"l" : {"output_unit": "ml", "expression": "%s * 1000"},  # Litres to mL
}

## Called when FormulaScene.gd's input LineEdits have their text change
func _on_line_edit_text_changed(new_text: String) -> void:
	process_input( new_text )


func process_input(input_string: String):
	var output : Array = parse_input( input_string )
	value = output[0]
	error = output[1]
	if value == NAN:
		invalid_input_received.emit( error, self )  # output is = Expression.get_error_text() 
	else:
		processed_valid_input.emit( value, self )  # Send to InputsArray



## Checks what conversions need to happen with an expression. 
## Converts an expression into the needed value using CONVERSION_EXPRESSIONS. 
## Returns an array with the value/NAN and suitable error text
func parse_input(expr: String) -> Array:
	if expr.is_valid_float():  # skip parsing if no special characters
		return [ expr.to_float(), "" ]  # note: 2e4, 4e10 etc. count as floats
	
	expr = expr.to_lower()  # prevents capitalisation-related input issues
	
	# We check all the keys in CONVERSION_EXPRESSIONS to see if they both match with the ending
	# letter(s) of the given expression and self.required_unit matches the expression's output unit
	for key in CONVERSION_EXPRESSIONS.keys():
		# e.g. Does "25c" end with "c" AND does "k" match with self.required_unit?
		# e.g. Does "25mL" end with "mL" AND does "L" match with self.required_unit?
		if expr.ends_with( key ) and CONVERSION_EXPRESSIONS[ key ].output_unit == required_unit:
			return FormulaTools.calculate_expression( 
				CONVERSION_EXPRESSIONS[ key ].expression % [  # replace the conversion expression %s
					expr.to_float()						# with the stripped (i.e. no letters) expression
				] )
	
	# Match against the expression, replace any offending characters, and attempt calculation
	# Early tests show that it stops calculate_expression from throwing errors Expression should catch...
	expr = regex_char_remover.sub( expr, "", true )
	
	## No special set cases? Try to calculate the expression anyway.
	return FormulaTools.calculate_expression( expr )


