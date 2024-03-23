extends Node
func t1():
	print("test 1")
	
func t2():
	print("test 2")

var s := "test"
var pos := 0

func _ready():
	var x := func(): self.t1.call(); self.t2.call()
#	x.call()
	
	var y = "Testicles"
	y += y.repeat(1)
#	print(y)
	
	var q = Token.generate_token( Token.TYPES.ASSIGNMENT, "=" )
	var r = Token.generate_token( Token.TYPES.ASSIGNMENT, "=" )
	
	print("q: %s (%s) and r: %s (%s) -> %s" % [q, hash(q),  r, hash(r),  hash(q)==hash(r)] )
	


var regex_test_for_identifier := RegEx.create_from_string("[A-Za-z]")
func is_identifier(character: StringName) -> bool:
	# RegExMatch.get_string() returns a blank string if unsuccessful
	return ( regex_test_for_identifier.search( character ) != null )


func gen_dd_mm_yyy(amount := 20) -> Array[String]:
	var d : Array[String] = []
	for i in amount:
		var day := randi_range(1, 31)
		var month := randi_range( 1, 12 )
		var year := randi_range( 2000, 2003 )
		d.append( "%s/%s/%s" % [day, month, year] )
	d.sort()
	return d

func gen_yyyy_mm_dd(amount := 20) -> Array[String]:
	var d : Array[String] = []
	for i in amount:
		var day := randi_range(1, 31)
		var month := randi_range( 1, 12 )
		var year := randi_range( 2000, 2003 )
		d.append( "%s/%s/%s" % [year, month, day] )
	d.sort()
	return d
