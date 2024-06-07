extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	move_car()
	#go_flat()
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func move_car():
	for n in 45:
		position.x -= 10
		await get_tree().create_timer(0.15).timeout 
	
	go_flat()
	
func go_flat():
	var backWheel = self.get_child(0)
	backWheel.wheel_go_flat()
	self.get_child(1).play("stopped_wheel")
	pass
