class_name FormulaVariations extends Resource

## An example of formula variations:
## {
## 	"C" : "n/V",  # C = n/V
## 	"n" : "C*V",  # n = C*V
## 	"V" : "n/C",  # V = n/C
## }

@export var formulas = {}:
	set(value):
		var new : Dictionary = {}
		for key in value:  # ...yes this is silly, but for consistency, lowercase is needed
			new[ key.to_lower() ] = value[ key ].to_lower()
		formulas = new
