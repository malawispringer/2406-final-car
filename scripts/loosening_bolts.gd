extends Node2D

@onready var wrench = $unconnected_wrench
@onready var bolts = [$"Bolts/BoltPic-modified",$"Bolts/BoltPic-modified2",$"Bolts/BoltPic-modified3",$"Bolts/BoltPic-modified4"]
@onready var timer = $Timer
@onready var carJack = $"car-jack"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Prompt player to use the wrench

# If wrench is dragged over bolts, rotate bolts to "loosen"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $slot_object.hasItem == true:
		if $slot_object.get_child(0) == wrench:
			$Prompt.text = "GOOD JOB"
			await get_tree().create_timer(3).timeout 
			get_tree().change_scene_to_file("res://scenes/3car_jacking.tscn")
		else:
			$Prompt.text = "PLEASE USE THE WRENCH"
			await get_tree().create_timer(0.5).timeout
			$slot_object.remove_child($"car-jack")
			#$slot_object.remove_child($"back-up-wheel")

func _on_collision_shape_2d_child_entered_tree(wrench):
	bolts.queue_free()
	timer.start(2)
	
