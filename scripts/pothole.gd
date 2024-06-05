extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body is CharacterBody2D:
		if body is TDCar:
			#print("res://scenes/level_" + str(int(str(get_tree().current_scene.name)) + 1) + ".tscn")
			get_tree().change_scene_to_file("res://scenes/watch_flat_tire.tscn") 	
			
