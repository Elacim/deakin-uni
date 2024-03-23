class_name InputStream extends Node

# The character input stream

var pos  := 0
var line := 1
var col  := 0

var input : String = "":
	set(value):
		reset_input_positions()
		input = value + "␃"  # append an end-of-text character for is_eof() detection
		remaining_stream = input

var remaining_stream := ""


func next() -> String:
	var character : String = input[ pos + 1 ]
	if character != "":
		character = input[ pos ]
		pos += 1
	if character == "\n":
		line += 1
		col = 0
	else:
		col += 1
	if DEBUG.PRINT_INPUT_STREAM_STACK:
		print(character)
		print_stack()
		print()
	remaining_stream = remaining_stream.erase(0, 1)
	return character


func get_nexts(amount:=2) -> String:
	var compiled_next := ""
	for i in amount:
		compiled_next += next()
	return compiled_next


func peek(by_amount:=0) -> String:
	if pos + by_amount >= input.length():
		return ""
	return input[ pos + by_amount ]


## Peek ahead till all {occurrences} are found (returns True if so). 
## If the peeked character is not the desired character, it returns false. It needs to be sequential.
func peek_for_character(character: String, occurrences:=1) -> bool:
	for i in occurrences:
#		print_debug("Character: %s  |  Peek(%s): %s" % [character, i, peek(0)])
		if peek(i) != character:
			return false
	return true
	

func peek_back(by_amount:=1) -> String:
	if (pos - by_amount) < 0:
		return ""
	return input[ pos - by_amount ]


func is_eof() -> bool:
	return input[ pos ] == "␃"  # check for an end-of-text character ␃

func croak(msg: String):
	assert(pos != NAN, "%s: (%s:%s)" % [msg, line, col])
	pass


func reset_input_positions():
	pos = 0
	line = 1
	col = 0

