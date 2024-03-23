class_name TextEditInputDataset extends TextEdit


const whitelisted_characters : Array[StringName] = [".", "-", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

signal user_dataset_is_valid
signal user_dataset_invalid_input

@export var minimum_dataset_size : int = 2


func _ready() -> void:
	text_changed.connect(_on_text_changed)


# Sanitise the data to see if it actually is valid
func _on_text_changed() -> void:
	var sanitised : Array[float] = []
	var amal : String = ""  # 'amalgamation'. We frankenstein the string together.
	for character in text:
		
		if character == " ": # when we meet a space, we convert amal into a float and add it to the sanitised output
			sanitised.append( float(amal) )
			amal = ""
		elif character in whitelisted_characters:
			amal = amal + character
		else:
			print("invalid char")
			return
	
	if sanitised.size() >= minimum_dataset_size:
		emit_signal("user_dataset_is_valid", sanitised)
