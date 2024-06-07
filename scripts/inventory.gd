extends Control


@onready var main_container = $TextureRect/GridContainer

func _ready() -> void:
	pass 
# Once object has been clicked
func _get_drag_data(at_position):
	var dragSlotNode = _get_slot_node_at_position(at_position)
	#if dragSlotNode.texture == null: return
	#print (dragSlotNode)
	var dragPreviewNode = dragSlotNode.duplicate()
	dragPreviewNode.custom_minimum_size = Vector2(60,60)
	set_drag_preview(dragPreviewNode)
	print("targetcontainer getting drag_data has run")
	return dragSlotNode
	
# Only allows for the object to be dropped in a particular area
func _can_drop_data(at_position, data):
	var targetSlotNode = _get_slot_node_at_position(at_position)
	# Checks if object is draggable
	var can_drop: bool = data is Node and data.is_in_group("DRAGGERS")
	print("we can dropp")
	return targetSlotNode != null or can_drop
	
#func _drop_data(at_position, dragSlotNode) -> void:
#	print("targetcontainer drop_data_has run")
#	var targetSlotNode = _get_slot_node_at_position(at_position)
#	
#	targetSlotNode.texture = dragSlotNode.texture
#	if targetSlotNode.texture  == null:
#		dragSlotNode.texture = null
#	else:
#		dragSlotNode.texture = targetSlotNode.texture 
	
	
func _get_slot_node_at_position(position):
	var allSlotNodes = main_container.get_children()
	for node in allSlotNodes:
		#print(node)
		var node_global_position = node.position
		var node_rect_size = node.size
		var node_rect = Rect2(node_global_position, node_rect_size)
		#print(node_global_position)
		#print(position)
		if node_rect.has_point(position):
			print("getting node")
			return node
	return null  # Return null if no node is found at the position

