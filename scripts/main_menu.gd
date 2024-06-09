extends Control

var scene 

func _ready():
	scene = get_tree()
	pass # Replace with function body.

# Start button brings you to driving scene
func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/scene-change.tscn")

# Quitting the game
func _on_quit_pressed():
	print("trying to quit")
	scene.quit()
