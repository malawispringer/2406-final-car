extends Control

@onready var main_container = $TextureRect/GridContainer

func _get_drag_data(at_position):
	var dragSlotNode = get_slot_node_at_position(at_position)
	if dragSlotNode.texture == null: return
	
	var dragPreviewNode = dragSlotNode.duplicate()
	dragPreviewNode.custom_minimum_size = Vector2(60,60)
	set_drag_preview(dragPreviewNode)
	print("targetcontainer getting drag_data has run")
	return dragSlotNode
	
func _can_drop_data(at_position, data):
	var targetSlotNode = get_slot_node_at_position(at_position)
	var can_drop: bool = data is Node and data.is_in_group("DRAGGERS")
	print("we can dropp")
	return targetSlotNode != null or can_drop
	
func _drop_data(at_position, dragSlotNode) -> void:
	print("targetcontainer drop_data_has run")
	var targetSlotNode = get_slot_node_at_position(at_position)
	var targetTexture = targetSlotNode.texture 
	
	targetSlotNode.texture = dragSlotNode.texture
	if targetTexture == null:
		dragSlotNode.texture = null
	else:
		dragSlotNode.texture = targetTexture

#func _drop_data(position: Vector2, data) -> void:
#	print("targetcontainer drop_data_has run")
	
func get_slot_node_at_position(position):
	var allSlotNodes = main_container.get_children()
	print(allSlotNodes)
	for node in allSlotNodes:
		var nodeRect = node.get_global_rect()
		
		if nodeRect.has_point(position): return node
	

