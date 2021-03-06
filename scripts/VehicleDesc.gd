extends Node2D

var vehicleMode = 3 #1: plane, 2: train, 3: run
var nextSceneAddress = ''

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("landingBtn").visible = false
	if(vehicleMode == 1):
		get_node("plane").visible = true
		get_node("planeLabelHeader").visible = true
		get_node("planeLabelText").visible = true
		get_node("train").visible = false
		get_node("trainLabelHeader").visible = false
		get_node("trainLabelText").visible = false
		get_node("run").visible = false
		get_node("runLabelHeader").visible = false
		get_node("runLabelText").visible = false
	elif (vehicleMode == 2):
		get_node("plane").visible = false
		get_node("planeLabelHeader").visible = false
		get_node("planeLabelText").visible = false
		get_node("train").visible = true
		get_node("trainLabelHeader").visible = true
		get_node("trainLabelText").visible = true
		get_node("run").visible = false
		get_node("runLabelHeader").visible = false
		get_node("runLabelText").visible = false
	else:
		get_node("plane").visible = false
		get_node("planeLabelHeader").visible = false
		get_node("planeLabelText").visible = false
		get_node("train").visible = false
		get_node("trainLabelHeader").visible = false
		get_node("trainLabelText").visible = false
		get_node("run").visible = true
		get_node("runLabelHeader").visible = true
		get_node("runLabelText").visible = true


func _on_Button_pressed():
	get_parent().remove_child(self)


func _on_Timer_timeout():
	get_node("landingBtn").visible = true


func _on_landingBtn_pressed():
	get_tree().change_scene(nextSceneAddress)
