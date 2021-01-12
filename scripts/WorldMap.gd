extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("readyBtn").disabled = true
	get_node("readyBtn").modulate.a = 0

func showGoBtn():
	if(get_node("ColorSquare").clicked == 1 and
	get_node("ColorSquare2").clicked == 1 and
	get_node("ColorSquare3").clicked == 1 and
	get_node("ColorSquare4").clicked == 1 and
	get_node("ColorSquare5").clicked == 1 and
	get_node("ColorSquare6").clicked == 1 and
	get_node("ColorSquare7").clicked == 1 and
	get_node("ColorSquare8").clicked == 1 and
	get_node("ColorSquare9").clicked == 1 and
	get_node("ColorSquare10").clicked == 1):
		get_node("readyBtn").disabled = false
		get_node("AnimationPlayer").play("buttonFade")

func _on_readyBtn_pressed():
	get_node("/root/global").setIndiaRouteInfo()
	get_tree().change_scene("res://scenes/RouteInfo.tscn")
