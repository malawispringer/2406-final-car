extends Control

@onready var main_container = $TextureRect/GridContainer

func _get_drag_data(at_position):
	var dragSlotNode = get_slot_node_at_position(at_position)
	#if dragSlotNode.texture == null: return
	
	#var dragPreviewNode = dragSlotNode.duplicate()
	#dragPreviewNode.custom_minimum_size = Vector2(60,60)
	#set_drag_preview(dragPreviewNode)
	
	return dragSlotNode
	
func _can_drop_data(at_position, data):
	var targetSlotNode = get_slot_node_at_position(at_position)
	
	return targetSlotNode != null
	
func _drop_data(at_position, dragSlotNode):
	var targetSlotNode = get_slot_node_at_position(at_position)
	var targetTexture = targetSlotNode.texture
	
	targetSlotNode.texture = dragSlotNode.texture
	if targetTexture == null:
		dragSlotNode.texture = null
	else:
		dragSlotNode.texture = targetTexture
	
func get_slot_node_at_position(position):
	var allSlotNodes = (main_container.get_children())
	
	for node in allSlotNodes:
		var nodeRect = node.get_global_rect()
		
		if nodeRect.has_point(position): return node
	

