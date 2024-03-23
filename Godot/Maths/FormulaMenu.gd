extends Control

## The scenes tied to each formula. Allows lots of control with the visuals.
@export var FormulaScenes : Array[PackedScene] = [
	preload("res://Formulas/Scenes/Formula-Molarity.tscn"),
	preload("res://Formulas/Scenes/Formula-C1V1-C2V2.tscn")
]

@onready var tabs : TabBar = $TabBar
@onready var formula_parent : Control = $Formulas

var formula_nodes : Array[FormulaScene] = []
var current_formula : FormulaScene


func _ready() -> void:
	tabs.clear_tabs()  # erase any testing tabs - maybe add metadata/option for 
	for formula in FormulaScenes:
		var formula_node = formula.instantiate()
		formula_parent.add_child( formula_node )  # change to call_deferred("add_child") if causing problems
		formula_node.hide()
#		new_formula.ready.connect( _on_formula_node_ready )

		formula_nodes.append( formula_node )
		# FormulaScene.FormulaXYZ.title/icon. It's slightly confusing
		tabs.add_tab( formula_node.formula.title, formula_node.formula.icon )  
		
		
	assert( not formula_nodes.is_empty(), "FormulaScenes must have formulas within it for this program to do anythin'." )
	# Sync the tabs + current formula in case tabs.current_tab isn't 0
	tabs.current_tab = 0
	current_formula = formula_nodes[0]


func _on_tab_bar_tab_changed(tab: int) -> void:
	# Hide and disable every node...
	for node in formula_nodes:
		node.visible = false
		node.process_mode = Node.PROCESS_MODE_DISABLED
	# ...then show only the new node selected from the tab 
	current_formula = formula_nodes[ tab ]
	current_formula.visible = true
	current_formula.process_mode = Node.PROCESS_MODE_INHERIT
#	tabs.current_tab = tab





## Validates an expression and executes it, returning the valid or invalid (NAN) result
static func calculate_expression(expr: String) -> float:
	var calculation := Expression.new()
	if calculation.parse( expr ) == OK:
		# Expression.execute() returns a Variant, so this may cause problems...
		var return_value = calculation.execute()
		
		if calculation.has_execute_failed():
			ErrorLog.log_error( calculation.get_error_text() )
			# Add a logging thing for calculations that throw an error
			# ErrorLog.log( "Error in executing expression: %s" % [ calculation.get_error_text() ] )
			return NAN
		else: 
			return return_value
	# ErrorLog.log( "Error in parsing expression: %s" % [ calculation.get_error_text() ] )
	return NAN





