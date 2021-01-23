extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_nextSceneBtn_pressed():
	get_node("/root/global").setGreeceRouteInfo()
	get_tree().change_scene("res://scenes/RouteInfo.tscn")


func _on_SkipBtn_pressed():
	get_node("/root/global").setGreeceRouteInfo()
	get_tree().change_scene("res://scenes/RouteInfo.tscn")
