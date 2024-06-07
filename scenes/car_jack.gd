extends TextureRect


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("DRAGGERS")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Makes the Car Jack draggab;e
func _get_drag_data(at_position):
	#var preview = TextureRect.new()
	#preview.texture = texture
	var dragPreview = self.duplicate()	
	dragPreview.custom_minimum_size = Vector2(60,60)
	set_drag_preview(dragPreview)
	#self.visible = false	
	print("targetcontainer getting drag_data has run")
	return self
	
