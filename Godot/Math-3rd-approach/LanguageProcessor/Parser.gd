extends Node

var tokeniser := Tokeniser.new()

const CLASSES = {
	"functions" : ""
}

const OPERATOR_PRECEDENCE : Dictionary = {
	# They're spaced out 5 apart for future additions
	"(":0, ")":0,
	"**":5,
	"*":10, "/":10, "%":10,
	"+":15, "-":15,
	"=":INF  # assignment has the lowest precendence
}

# "var",


#var elementRegex : RegEx = RegEx.create_from_string( "[A-Za-z]" )  # unneeded, takes a string like "C6" and removes the "C" to get the element count

#var input_str := "theo(C8H12O6 * 5, 6)"

#var hard_str := """actual( theo( lim( 5C8H12O6 5.0  3H2O 2.3 ), 5CO2 ), 92.9 ) "glucos''e" * 9"""
#var hard_str := 'actual( theo( lim( 5C8H12O6 5.0  3H2O 2.3 ), x ), 92.9 ) """glucose""" * 9'
#var input_str := "lim( 5C8H12O6 5.0  3H2O 2.3 )"
var input_str := "5 +1 - 7"


var tokens := tokeniser.tokenise_input( input_str )


func _ready() -> void:
	for t in tokens:
		print( Token.TYPES.find_key( t.type ), " : ", t.value)
		pass


func go_through_tokens():
	pass


func unpack_function(start: Token.TYPES, end: Token.TYPES, delimiter=&" "):
	var args : Array[Token] = [] 
	var arg : Token
	while not tokeniser.is_eof():
		var token = tokeniser.next_token()
		if token.value == delimiter:
			pass
		args.append( read_as_token_type( token ) )
	return {
		"function" : "",
		"args" : args
	}
		
	# lim( one two three four )

func read_next_token():
	var token := tokeniser.next_token()
	read_as_token_type( token )
	

## A generic function that branches out to more specific functions. 
## Used to prevent duplicated if statetements finding the right read_as..() function. 
func read_as_token_type(token: Token):
	match token.type:
		Token.TYPES.NUMBER:
			read_as_number( token )
		Token.TYPES.ELEMENT:
			read_as_molecule()
		Token.TYPES.FUNCTION, \
		Token.TYPES.ELEMENT:
#			unpack_function()
			pass
		Token.TYPES.OPERATOR:
			pass



func read_as_number(token: Token):
	if tokeniser.peek_token(1).type == Token.TYPES.ELEMENT:
		return read_as_molecule()
	var new_token := tokeniser.next_non_whitespace_token()
	if ( new_token.type == Token.TYPES.OPERATOR ):
		
		pass



func parse_expression():
	
	pass

func factor():
	pass

func term():
	pass
	var x = Leaf.new(5.2)


class Leaf:
	func _init(init_num : float):
		num = init_num
		
	var num : float
	func _eval():
		pass
	
	func convert_to_string():
		return "%s" % num


class ASTAddition extends Leaf:
	
https://dev.to/j0nimost/making-a-math-interpreter-ast-4848


func check_if_binary(token_left : Token, precedence: int):
	var token = tokeniser.peek_token()
	if token.type == Token.TYPES.OPERATOR:
		var token_precedence : int = OPERATOR_PRECEDENCE[ token.value ]
		if token_precedence < precedence:
			var new_token := tokeniser.next_token()
			return {
				"type" 		: token.type,
				"operator" 	: token.value,
				"left"		: token_left,
				"right"		: check_if_binary( new_token, token_precedence )
			}


func read_as_molecule():
	
	pass




func parse_element():
	pass





"""

TOKENS


variable-declaration-token variable-name-token assignment-token expression-token
var test = 


lim( 5C8H12O6 5.0  3H2O 2.3 )

function with arguments ( molecule mass  molecule mass )

func
	args: [
		Express1,
		7.2,
		Express2,
		9.5 
	R: 



"""

class TYPE:
	var value


class Function extends TYPE:
	pass

class Expressions extends TYPE:
	pass

class Statement extends TYPE:
	pass


