extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	setColorRectVisibel(false)

func _on_firstSeqBtn_pressed():
	setColorRectVisibel(true)


func _on_endBtn_pressed():
	setColorRectVisibel(false)


func setColorRectVisibel(visibleVal):
	var nodes = self.get_children()
	for node in nodes:
		if node is ColorRect:
			node.visible = visibleVal

func _on_nextSceneBtn_pressed():
	get_tree().change_scene("res://scenes/greece/fifthSequence.tscn")
