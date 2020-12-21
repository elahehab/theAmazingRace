extends Node2D

export var countryTxt = ''
export var cityTxt = ''
export var monumentTxt = ''

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("countryLabel").text = get_node("/root/global").countryTxt
	get_node("cityLabel").text = get_node("/root/global").cityTxt
	get_node("monumentLabel").text = get_node("/root/global").monumentTxt

func _on_NextSceneBtn_pressed():
	var nextScene = get_node("/root/global").routeInfoNextScene
	get_tree().change_scene(nextScene)
