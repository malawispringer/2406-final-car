extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
#add the clicking functionality
func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT: 
		if get_rect().has_point(to_local(event.position)):
			self.scale.y = 1.25
			$"../Prompt".text = "GOOD JOB"
			for n in 150:
				position.x -= 3
				await get_tree().create_timer(0.01).timeout
			print("You clicked on Sprite!")
			await get_tree().create_timer(3).timeout 
			$"../Prompt".text = "THE TIRE HAS BEEN SUCCESSFULLY REPLACED, GOOD JOB!"
			await get_tree().create_timer(5).timeout 
			get_tree().change_scene_to_file("res://scenes/9end-scene.tscn")
