extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("readyBtn").visible = false
	setColorRectVisible(false)

func _on_firstSeqBtn_pressed():
	get_node("Timer").start()
	setColorRectVisible(true)


func setColorRectVisible(visibleVal):
	var nodes = self.get_children()
	for node in nodes:
		if node is ColorRect:
			node.visible = visibleVal


func _on_Timer_timeout():
	setColorRectVisible(false)
	get_node("readyBtn").visible = true


func _on_readyBtn_pressed():
	get_tree().change_scene("res://scenes/greece/secondSequence.tscn")


func _on_SkipBtn_pressed():
	get_tree().change_scene("res://scenes/greece/secondSequence.tscn")
