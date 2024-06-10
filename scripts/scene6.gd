extends Node2D
@onready var Wrench = $wrench2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $slot_object.hasItem == true:
		if $slot_object.get_child(0) == Wrench:
			$Prompt.text = "GOOD JOB!"
			await get_tree().create_timer(3).timeout 
			get_tree().change_scene_to_file("res://scenes/7added_bolts.tscn")
