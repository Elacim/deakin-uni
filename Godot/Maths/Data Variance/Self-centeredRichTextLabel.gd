extends RichTextLabel

func _ready() -> void:
	item_rect_changed.connect(_on_item_rect_changed)
	
func _on_item_rect_changed():
	pass
