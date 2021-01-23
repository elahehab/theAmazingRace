extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("1").visible = 0
	get_node("2").visible = 0
	get_node("3").visible = 0
	get_node("4").visible = 0
	get_node("5").visible = 0
	get_node("6").visible = 0
	get_node("7").visible = 0
	get_node("8").visible = 0
	get_node("45").visible = 0
	get_node("10").visible = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	get_node("1").visible = 1
	get_node("2").visible = 1
	get_node("3").visible = 1
	get_node("4").visible = 1
	get_node("5").visible = 1
	get_node("6").visible = 1
	get_node("7").visible = 1
	get_node("8").visible = 1
	get_node("45").visible = 1
	get_node("10").visible = 1


func _on_nextSceneBtn_pressed():
	get_node("/root/global").setEgyptRouteInfo()
	get_tree().change_scene("res://scenes/RouteInfo.tscn")

func onColorPressed(num):
	get_node(str(num)).visible = true


func _on_color1_pressed():
	onColorPressed(1)


func _on_color2_pressed():
	onColorPressed(2)


func _on_color3_pressed():
	onColorPressed(3)


func _on_color4_pressed():
	onColorPressed(4)


func _on_color5_pressed():
	onColorPressed(5)


func _on_color6_pressed():
	onColorPressed(6)


func _on_color7_pressed():
	onColorPressed(7)


func _on_color8_pressed():
	onColorPressed(8)


func _on_color45_pressed():
	onColorPressed(45)


func _on_color10_pressed():
	onColorPressed(10)


func _on_SkipBtn_pressed():
	get_node("/root/global").setEgyptRouteInfo()
	get_tree().change_scene("res://scenes/RouteInfo.tscn")
