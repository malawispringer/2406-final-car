extends Node2D

@onready var carJack = $"car-jack"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_collision_shape_2d_child_entered_tree(carJack):
	get_tree().change_scene_to_file("res://scenes/car_jack_2.tscn")
