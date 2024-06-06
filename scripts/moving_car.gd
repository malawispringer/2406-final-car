extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	move_car()
	go_flat()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func move_car():
	for n in 45:
		position.x -= 10
		await get_tree().create_timer(0.15).timeout 
	
func go_flat():
	pass
