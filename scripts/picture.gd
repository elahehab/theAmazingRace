extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("roadBlock").get_node("AnimationPlayer").play("load")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_nextSceneBtn_pressed():
	get_node("/root/global").countryTxt = 'HOME TO EUROPE\'S THREE ACTIVE VOLCANOES'
	get_node("/root/global").cityTxt = 'THE RULES OF THE ANCIENT EMPIRE'
	get_node("/root/global").monumentTxt = 'THE FLAVIAN AMPHITHEATER'
	get_node("/root/global").routeInfoNextScene = 'res://scenes/travelScene.tscn'
	get_node("/root/global").travelSceneNextScene = 'res://scenes/italy/italyTitle.tscn'
	get_tree().change_scene("res://scenes/RouteInfo.tscn")
