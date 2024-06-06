extends Control

func _ready():
	pass # Replace with function body.

# Start button brings you to driving scene
func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/driving_game.tscn")

# Quitting the game
func _on_quit_pressed():
	print("trying to quit")
	get_tree().quit()
