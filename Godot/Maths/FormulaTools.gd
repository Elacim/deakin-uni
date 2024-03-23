class_name FormulaTools extends Node


## Validates an expression and executes it, returning the valid/invalid result and error text
static func calculate_expression(expr: String) -> Array:
	var calculation := Expression.new()
	if calculation.parse( expr ) == OK:
		# Expression.execute() returns a Variant, so this may cause problems...
		var return_value = calculation.execute()
		if not calculation.has_execute_failed():  # if execution has NOT failed, send the return value
			return [ return_value, &""]
	# If parsing/execution has failed, send NAN and error text
	return [ NAN, calculation.get_error_text() ]
