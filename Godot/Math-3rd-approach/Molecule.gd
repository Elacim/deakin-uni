class_name Molecule extends Elements

## The common name for the molecule
var name := &""

## e.g. 5 C6 H12 O6 has a count of 5 (the number at the start)
var count := 1

var components := {
	"C" : 6,
	"H" : 12,
	"O" : 6
}
