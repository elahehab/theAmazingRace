extends Node2D

export var vehicleMode = 1 #1: plane, 2: train, 3: run
var VEHICLE_DESC = preload("res://scenes/VehicleDesc.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	if(vehicleMode == 1):
		get_node("Plane").visible = true
		get_node("PlaneLabel").visible = true
		get_node("Train").visible = false
		get_node("TrainLabel").visible = false
		get_node("Walk").visible = false
		get_node("WalkLabel").visible = false
	elif (vehicleMode == 2):
		get_node("Plane").visible = false
		get_node("PlaneLabel").visible = false
		get_node("Train").visible = true
		get_node("TrainLabel").visible = true
		get_node("Walk").visible = false
		get_node("WalkLabel").visible = false
	else:
		get_node("Plane").visible = false
		get_node("PlaneLabel").visible = false
		get_node("Train").visible = false
		get_node("TrainLabel").visible = false
		get_node("Walk").visible = true
		get_node("WalkLabel").visible = true


func _on_pickButton_pressed():
	var desc = VEHICLE_DESC.instance()
	desc.vehicleMode = self.vehicleMode
	desc.position = Vector2(98, 83)
	get_parent().add_child(desc)
