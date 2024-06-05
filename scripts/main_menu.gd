extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_start_button_pressed():
	get_tree().change_scene("res://scenes/driving_game.tscn")
	

func _on_quit_button_pressed():
	get_tree().quit()
