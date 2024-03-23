class_name Token extends Resource

## IMPORTANT RESTRICTIONS TO NOTE:
## You can not have variable/function named the same as an element
## e.g. C=5 is not valid as C is Carbon. c=5 is valid.

# Characters that could be something:
#  ~  ?  @

const OPERATORS : Array[StringName] 	= ["/", "*", "+", "-", "%", "#"]
const PUNCTUATION : Array[StringName] 	= [".", ",", "?", "$", "@"]
const GROUPERS : Array[StringName] 		= ["(", ")"]  # () <> [] {}
const KEYWORDS : Array[StringName] 		= ["var"]
const ASSIGNMENT : StringName 			= "="

enum OPERATORS_ {
	EXPONENT,
	MULTIPLY,
	DIVIDE,
	ADDITION,
	SUBTRACTION,
#	MODULO
	
}

enum TYPES {
	ERROR,
	END_OF_FILE,
	
	WHITESPACE,		# used as both a prettifier and a delimiter
	PUNCTUATION,
	GROUPER,
	
	STRING,			# "" or ''
	MULTISTRING,	# """
	NUMBER,			# floats/ints
	ELEMENT,		# elements on the periodic table like Cu or K
	
	FUNCTION,		# functions defined in 
	VARIABLE,		# user-defined variables
	OPERATOR,
	
	ASSIGNMENT,
	KEYWORD,
}

var type : TYPES
var value

static func generate_token( gen_type: TYPES, gen_value ) -> Token:
	var new_token = Token.new()
	new_token.type = gen_type
	new_token.value = gen_value
	return new_token
