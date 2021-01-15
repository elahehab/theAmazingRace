extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("readyBtn").visible = false
	setColorRectVisibel(false)

func _on_firstSeqBtn_pressed():
	get_node("Timer").start()
	setColorRectVisibel(true)

func setColorRectVisibel(visibleVal):
	var nodes = self.get_children()
	for node in nodes:
		if node is ColorRect:
			node.visible = visibleVal

func _on_Timer_timeout():
	get_node("readyBtn").visible = true
	setColorRectVisibel(false)

func _on_readyBtn_pressed():
	get_tree().change_scene("res://scenes/roadBlock/roadBlock.tscn")
