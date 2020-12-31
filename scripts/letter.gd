extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_nextSceneBtn_pressed():
	get_node("/root/global").countryTxt = 'THE HELLENIC REPUBLIC, A CRADLE OF WESTERN CIVILIZATION'
	get_node("/root/global").cityTxt = 'RECORDED HISTORY OF 3400 YEARS'
	get_node("/root/global").monumentTxt = 'THE EXTREMITY CITADEL OF THE FIRST KING'
	get_node("/root/global").routeInfoNextScene = 'res://scenes/travelScene.tscn'
	get_node("/root/global").travelSceneNextScene = 'res://scenes/greece/greeceTitle.tscn'
	get_tree().change_scene("res://scenes/RouteInfo.tscn")
