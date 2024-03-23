class_name FormulaScene extends Control

## Allows the formula to use node-related commands
"""
The basic order of operations of this program is this:
	1. Input values in the LineEdits until there is 1 unknown
		- Each change is emitted to FormulaInput.process_input()
	2. 

"""


## The formula to setup
@export var formula : Formula

## Must derive from LineEdit. The scenes that allow values to be input and presented.
@onready var InputNodeScene : PackedScene = preload("res://LineEditInputs.tscn")
## The scene for the InputNodeScene children to be parented to
@onready var InputParentScene : PackedScene =  preload("res://InputContainer.tscn")

## The name of the metadata applied to nodes that should not be deleted on _ready() (or when 
## 'setup_nodes_from_formula()' is called). Note: Only the presence of the metadata matters, not the value
@export var blacklisted_from_deletion_meta : StringName = "doNotDeleteOn_ready"

var inputs_parent : Control
var outputs_parent : Control

var input_nodes := {}  # {FormulaInput : LineEdit}

func _ready() -> void:
	setup_nodes_from_formula()
	formula.result_calculated.connect( _on_receive_result_from_formula )

## Received from Formula._on_receive_all_inputs_valid()
func _on_receive_result_from_formula(result: float, error: StringName, unknown: FormulaInput):
	var node : LineEditInputs = input_nodes[ unknown ]
	if !error:  # I know this looks wrong, but NAN == NAN returns false
		node.text = "%s" % result 
		node.editable = false
	else:
		node.text = error
		node.editable = true

## Instantiates all InputNodeScenes (default: LineEdit) and childs them to InputParentScene
func setup_nodes_from_formula() -> void:
	for child in get_children(true):
		# When called, any child without this metadata string (regardless of value) is freed
		if not child.has_meta( blacklisted_from_deletion_meta ):
			child.queue_free()
	
	inputs_parent = InputParentScene.instantiate()
	add_child( inputs_parent )
	
	assert( is_instance_valid(formula), 
		"Formula (%s) needs to be set in the '%s' scene" % [formula, self.name] )
	for input in formula.inputs.inputs:
		# Setup children and input_nodes dictionary for later
		var new_child : LineEditInputs = InputNodeScene.instantiate()
		inputs_parent.add_child( new_child )
		input_nodes[ input ] = new_child   # {FormulaInput : LineEdit}
		
		# Connect signals
		new_child.text_changed.connect( input._on_line_edit_text_changed )
		new_child.text_changed.connect( _on_line_edit_text_changed )
		
		# Do type-specific behaviour
		if input.type == FormulaInput.INPUT_TYPE.constant:
			new_child.editable = false
			new_child.text = "%s" % [input.value]
		else:
			new_child.placeholder_text = input.input_shorthand
		
		# Finally, set the LineEdit's name to the variable name and required unit
		new_child.name_label.text = "%s (%s)" % [input.input_var, input.required_unit]


func _on_line_edit_text_changed(new_text: String) -> void:
	
	pass
