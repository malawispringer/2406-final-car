extends TextureRect
var hasItem := false

func _get_drag_data(at_position):
	if self.get_child == null: return
	var dragItem = self.get_child
	print("getting item from inv")
	hasItem = false
	return dragItem
#	#if dragSlotNode.texture == null: return
#	#print (dragSlotNode)
#	var dragPreviewNode = dragSlotNode.duplicate()
#	dragPreviewNode.custom_minimum_size = Vector2(60,60)
#	set_drag_preview(dragPreviewNode)
#	print("targetcontainer getting drag_data has run")
#	return dragSlotNode

func _can_drop_data(at_position, data) -> bool:
	return true
	return false 
	
func _drop_data(at_position, data) -> void:
	data.get_parent().remove_child(data)
	#print("parent: " + str(data.get_parent()))
	#print("parent's child: " + str(data.get_parent().get_child(data)))
	add_child(data)
	self.texture = data.texture
	hasItem = true

