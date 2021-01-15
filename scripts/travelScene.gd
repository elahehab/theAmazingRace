extends Node2D

var GUIDE = preload("res://scenes/guide.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	var guide = GUIDE.instance()
	guide.step = get_node("/root/global").guideStep + 1
	add_child(guide)
	get_node("plane").nextSceneAddress = get_node("/root/global").travelSceneNextScene
	get_node("walk").nextSceneAddress = get_node("/root/global").travelSceneNextScene
	get_node("train").nextSceneAddress = get_node("/root/global").travelSceneNextScene

func _on_nextSceneBtn_pressed():
	get_tree().change_scene(get_node("/root/global").travelSceneNextScene)
