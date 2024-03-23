class_name Tokeniser extends Node

# Also known as the Token Input Stream

const ASSERT_ON_NULL_FUNCTION := false

## Functions to be checked over. This is the order they will be called in.
## Dictionaries are apparently ordered by insertion - this might change so this future-proofs a bit. 
## NOTE: THIS DOES NOT NECESSARILY CORRESPOND TO TOKEN PRECEDENCE 
## (e.g. function is parsed before elements but here it (is_identifier) is called after it)
var functions_ordered : Array[Callable] = [
	is_whitespace,
	is_element,
	is_identifier,
	is_digit,
	is_operator,
	is_grouper,
	is_punctuation,
	is_string,
	is_keyword,
	is_assignment
]

## Functions and their corresponding 'read_as' function. Leave as null if unused.
## is_operator will need to be changed if we use stuff like **
var functions_to_check : Dictionary = {
	is_whitespace 	: read_as_whitespace,
	is_element 		: read_as_element,  
	is_digit 		: read_as_num,
	is_grouper		: read_as_generic.bind( Token.TYPES.GROUPER ),
	is_operator 	: read_as_generic.bind( Token.TYPES.OPERATOR ),     # read_as_generic( char, TYPES )
	is_punctuation 	: read_as_generic.bind( Token.TYPES.PUNCTUATION ),  # Later: read_as_generic.call( char )
	is_string 		: read_as_string,  									# char is passed first, then the bound TYPES
	is_keyword		: read_as_generic.bind( Token.TYPES.KEYWORD ),
	is_identifier	: read_as_identifier,
	is_assignment 	: read_as_generic.bind( Token.TYPES.ASSIGNMENT ),
	invalid			: null
}


var input : InputStream = InputStream.new()
var tokens : Array[Token]

## ------------ Input ------------ ##
func tokenise_input(str_input: String) -> Array[Token]:
	input.input = str_input  # setup the InputStream with new input
	var tokens_gen : Array[Token] = []
	while !input.is_eof():  # keep going until the end of the input stream
		var token : Token = generate_next_token()
		if token:  # get_next_token() can return null
			tokens_gen.append( token )
	tokens = tokens_gen
	return tokens


## ------------ Misc ------------ ##

func invalid(character: StringName) -> bool:
	assert(character == " ", "Character (%s) does not fit into set categories" % character)
	return true

func is_whitespace(character: StringName) -> bool:
	return character == " "

## ------------ Variants ------------ ##

func is_element(character: StringName) -> bool:
	# Elements can be up to two letters long (minus the Uue stuff)
	# Check for one-character elements
	if Elements.is_element( character ):
		return true
	# Check for two-character elements
	return Elements.is_element( character + input.peek() )

func is_digit(character: StringName) -> bool:
	return character.is_valid_int()

func is_string(character: StringName) -> bool:
	return ( character in ["'", '"'] )

var regex_test_for_identifier := RegEx.create_from_string("[A-Za-z]")
func is_identifier(character: StringName) -> bool:
	# RegExMatch.get_string() returns a blank string if unsuccessful
	return ( regex_test_for_identifier.search( character ) != null )

## ------------ Listicles ------------ ##

func is_operator(character: StringName) -> bool:
	return ( character in Token.OPERATORS )

func is_punctuation(character: StringName) -> bool:
	return ( character in Token.PUNCTUATION )

func is_grouper(character: StringName) -> bool:
	return ( character in Token.GROUPERS )

func is_keyword(character: StringName) -> bool:
	return ( character in Token.KEYWORDS )

func is_assignment(character: StringName) -> bool:
	return ( character == Token.ASSIGNMENT )

## ------------ Input trawling functions ------------ ##

## THE MAIN FUNCTION TO BE CALLED BY EXTERNAL SCRIPTS
# Called by the parser script. Checks all the functions in functions_to_check
func generate_next_token() -> Token:
#	print_debug("Generating next token...")
	var character := input.next()
	
	# Every function that needs to be checked against is called.
	# Saves maintaining a bunch of if-statements
	# Is it performant? I have no idea, nor does it matter
	for f in functions_ordered:
		if f.call( character ): # e.g. is_digit.call() == true, else: continue to next check
			var calling_func : Callable = functions_to_check[ f ]  # e.g. read_as_num( character )
#			print_debug(calling_func.get_bound_arguments())
			if calling_func:
#				if calling_func.get_bound_arguments_count() == 1:
#				input.next()
				return functions_to_check[ f ].call( character ) 
			if ASSERT_ON_NULL_FUNCTION:
				assert(calling_func, "Function '%s' has no corresponding function in functions_to_check" % f )
	return null  # This'll never be reached, here for making the gdscript parser happy


## Keep going through characters until a condition is met (i.e. the function returns 'true')
func read_until_true_condition(end_condition: Callable, default_value:="") -> StringName:
	var compiled_str : String = default_value  # start the string with the starting value
	# It needs to be either be the end of the file or the condition met before breaking out this loop
	while ( 
		!input.is_eof()
			and
		!end_condition.call( input.peek() )
	):
		compiled_str += input.next()
	# As this string won't be changed, we can safely turn it into a StringName
	return StringName( compiled_str )  # we convert to this later to avoid memory allocations every "str += 'new_string'"



## ------------ Read as functions ------------ ##

## Tokenises whitespace as TYPES.WHITESPACE and a count (e.g. "    " would return as 4). 
## Doing this allows whitespace to be used as a tool, like: (e.g. "5 82 1" could be a list). 
## We count them in case we use that for syntax later. 
func read_as_whitespace( character: StringName ) -> Token:
	var whitespace_count : int = 1 + read_until_true_condition(
		func(character: StringName):
			if character != " ":
				return true
	).length()  # e.g. "   ".length() = 3 whitespace
	return Token.generate_token(
		Token.TYPES.WHITESPACE,
		whitespace_count
	)


## Tokenise a string of characters like "Cu" as an element
func read_as_element(character: StringName) -> Token:
	# Yes, it's unfortunate we double up 'self.is_element()'...
	# It's necessary as doing otherwise would defeat the purpose of the 'self.is_xyz' series
	# which should remain as determiner of path rather than the answer. self.is_element is the exception, being both.
	var compiled_element : String = character 
	var next_input := input.peek()
	if Elements.is_element(character + next_input):  # e.g. 'C' + 'u' = 'Cu' < is that an element?
		compiled_element += next_input
	
	return Token.generate_token(
		Token.TYPES.ELEMENT,
		StringName( compiled_element )
	)


## Tokenise a string starting and ending with ', ", or """. 
## e.g. Token: 'string'; """string"""; "'nested'"  |  NOT a token: "not_string' or """not_string"
## FIXME: THIS IS BROKEN
func read_as_string(start_char: String) -> Token:
	# We check for multistrings like """ and '''
	var is_multistring := false
	if input.peek_for_character(start_char, 2):
		start_char += input.next() + input.next() # add the extra start character ('''/""")
		is_multistring = true
	
	var compiled_str := read_until_true_condition(
		func(character: String):
			if character == start_char:
				input.next()
				return true
			elif ( is_multistring ) and ( input.peek_for_character(start_char[0], 2) ):
				input.get_nexts(2)
				return true  # this allows us to have things like """ " """ be valid
			return false
	)
	# Why no 2nd argument in ..until_true..()?: As we know if the String is a multistring or not, there's no point
	# in keeping the quotation marks as we know what they will be. We can always change this later.
	
	return Token.generate_token(
		Token.TYPES.MULTISTRING if is_multistring else Token.TYPES.STRING,
		compiled_str
	)


## Tokenise a number (including decimal point). 
func read_as_num(start_char: StringName) -> Token:
	var compiled_num := read_until_true_condition( 
		func(character: String):
			if is_digit( character ):  # If it's a digit, keep the loop going
				return false
			elif character == ".":  # or if it's a decimal point (indicating float)
				return false
			return true  # When it's not a digit/period, exit while loop
	, start_char)
	
	assert(compiled_num.is_valid_float(), "> %s < is not a valid float." % compiled_num)
	
	return Token.generate_token(
		Token.TYPES.NUMBER,
		compiled_num.to_float()
	)


const VARIABLE_DECLARATION_ENDER := &" "
const FUNCTION_DECLARATION_ENDER := &"("
func read_as_identifier(start_char: StringName) -> Token:
	var compiled_identifier := read_until_true_condition(
		func(character: StringName): 
			if character == VARIABLE_DECLARATION_ENDER \
				or \
			character == FUNCTION_DECLARATION_ENDER:
				return true
			return false
	, start_char)
	
	var peek_value : StringName = input.peek()
	if peek_value == VARIABLE_DECLARATION_ENDER:
		return Token.generate_token(
			Token.TYPES.VARIABLE,
			compiled_identifier
		)
	elif peek_value == FUNCTION_DECLARATION_ENDER:
		return Token.generate_token(
			Token.TYPES.FUNCTION,
			compiled_identifier
		)
	return null


func read_as_keyword(character: StringName) -> Token:
	var compiled_keyword := read_until_true_condition(
		func( character: StringName ):
			return ( character in Token.KEYWORDS )
	, character )
	return Token.generate_token(
		Token.TYPES.KEYWORD,
		compiled_keyword
	)


## Generate a token from a single character and a given token type. 
## Only works for single characters ("*" would work but "**" wouldn't.
func read_as_generic(character: StringName, type: Token.TYPES) -> Token:
	return Token.generate_token( type, character )


## --------- Parser functions --------- ##

var token_pos := -1

func next_token(by_amount:=1) -> Token:
	token_pos += by_amount
	var token := peek_token()  # 'peeks' the token at the new position
	
	return token

## For use in the parser: By default (with by_amount=0), returns the current token
func peek_token(by_amount:=0) -> Token:
	var peek_pos := token_pos + by_amount
	if tokens.size() == (peek_pos): return null
	return tokens[ peek_pos ]

func next_non_whitespace_token() -> Token:
	var token := next_token()
	while ( token.type == Token.TYPES.WHITESPACE ):
		next_token()
		continue
	return token

func is_eof() -> bool:
	return ( tokens[ token_pos ].type == Token.TYPES.END_OF_FILE )

func check_next_tokens(condition: Callable, type: Token.TYPES):
	pass
