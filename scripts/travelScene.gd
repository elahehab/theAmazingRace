extends Node2D

var GUIDE = preload("res://scenes/guide.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	var guide = GUIDE.instance()
	guide.step = get_node("/root/global").guideStep + 1
	add_child(guide)

func _on_nextSceneBtn_pressed():
	get_tree().change_scene(get_node("/root/global").travelSceneNextScene)
