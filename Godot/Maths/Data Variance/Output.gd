extends RichTextLabel

var default_text : StringName

func _ready() -> void:
	default_text = text

func set_new_text(new_text):
	text = default_text + new_text
