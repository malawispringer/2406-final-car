extends TextureRect


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("DRAGGERS")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _get_drag_data(at_position):
	print("targetcontainer getting drag_data has run")
	return self
