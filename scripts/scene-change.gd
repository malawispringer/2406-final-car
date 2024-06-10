class_name InstructionalScreen
extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	next()
	
	
func next():
	if Input.is_action_just_released("click"):
		print("did i click")
		get_tree().change_scene_to_file("res://scenes/2loosening_bolts.tscn") 	

#func _on_timer_timeout():
#	get_tree().change_scene_to_file("res:/scenes/loosening_bolts.tscn") 	
