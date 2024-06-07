extends TextureRect


func _can_drop_data(at_position, data) -> bool:
	return true
	return false 
	
func _drop_data(at_position, data) -> void:
	data.get_parent().remove_child(data)
	print("parent: " + str(data.get_parent()))
	print("parent's child: " + str(data.get_parent().get_child(data)))
	add_child(data)
	
