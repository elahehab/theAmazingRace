extends Node2D

var GUIDE = preload("res://scenes/guide.tscn")
var countryRevealed = false
var cityRevealed = false
var monRevealed = false

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("/root/musicScene").stopAll()
	get_node("/root/global").startTimer()
	print(get_node("/root/global").getTimeInSeconds())
	get_node("next").visible = false;
	get_node("countryLabel").text = get_node("/root/global").countryTxt
	get_node("cityLabel").text = get_node("/root/global").cityTxt
	get_node("monumentLabel").text = get_node("/root/global").monumentTxt
	var guide = GUIDE.instance()
	guide.step = get_node("/root/global").guideStep
	add_child(guide)

func _on_coutryBtn_pressed():
	get_node("countryLabel").text = get_node("/root/global").countryAnswer
	countryRevealed = true
	showNextBtnIfReady()

func _on_cityBtn_pressed():
	get_node("cityLabel").text = get_node("/root/global").cityAnswer
	cityRevealed = true
	showNextBtnIfReady()

func _on_monumentBtn_pressed():
	get_node("monumentLabel").text = get_node("/root/global").monumentANswer
	monRevealed = true
	showNextBtnIfReady()

func showNextBtnIfReady():
	if(cityRevealed and countryRevealed and monRevealed):
		get_node("next").visible = true

func _on_next_pressed():
	var nextScene = get_node("/root/global").routeInfoNextScene
	get_tree().change_scene(nextScene)


func _on_SkipBtn_pressed():
	var nextScene = get_node("/root/global").routeInfoNextScene
	get_tree().change_scene(nextScene)
