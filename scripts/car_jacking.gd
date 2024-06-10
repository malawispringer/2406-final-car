class_name liftCar
extends Node2D

@onready var carJack = $carjack2
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $slot_object.hasItem == true: 
		if $slot_object.get_child(0) == carJack:
			$Prompt.text = "GOOD JOB"
			await get_tree().create_timer(3).timeout 
			get_tree().change_scene_to_file("res://scenes/4car_jack_2.tscn")
		else: 
			$Prompt.text = "PLEASE USE THE CAR JACK"

# Makes the Car Jack draggab;e
#func _get_drag_data(at_position):
#	#var preview = TextureRect.new()
#	#preview.texture = texture
#	var dragPreview = self.duplicate()	
#	dragPreview.custom_minimum_size = Vector2(60,60)
#	set_drag_preview(dragPreview)
#	#self.visible = false	
#	print("targetcontainer getting drag_data has run")
#	return self

func _on_collision_shape_2d_child_entered_tree(carJack):
	get_tree().change_scene_to_file("res://scenes/car_jack_2.tscn")
