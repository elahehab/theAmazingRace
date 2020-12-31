extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_nextSceneBtn_pressed():
	get_tree().change_scene(get_node("/root/global").travelSceneNextScene)
