extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	get_node("1").modulate.a = 1
	get_node("2").modulate.a = 1
	get_node("3").modulate.a = 1
	get_node("4").modulate.a = 1
	get_node("5").modulate.a = 1
	get_node("6").modulate.a = 1
	get_node("7").modulate.a = 1
	get_node("8").modulate.a = 1


func _on_nextSceneBtn_pressed():
	get_node("/root/global").countryTxt = 'THE PLACE OF THE ANCIENT AMUN-RA'
	get_node("/root/global").cityTxt = 'WEST OF THE BANK OF THE NILE'
	get_node("/root/global").monumentTxt = 'THE GRAND NECROPOLIS OF ANCIENT KINGS'
	get_node("/root/global").routeInfoNextScene = 'res://scenes/travelScene.tscn'
	get_node("/root/global").travelSceneNextScene = 'res://scenes/egypt/pyramidTitle.tscn'
	get_tree().change_scene("res://scenes/RouteInfo.tscn")
