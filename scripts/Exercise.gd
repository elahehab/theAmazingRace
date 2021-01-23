extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("readyBtn").visible = false
	for i in range(1, 11):
		get_node("exe"+str(i)).visible = false
		get_node("Num"+str(i)).visible = false
		get_node("l"+str(i)).visible = false


func _on_color_1_pressed():
	onColorPressed(1)

func _on_color_2_pressed():
	onColorPressed(2)

func _on_color_3_pressed():
	onColorPressed(3)

func _on_color_4_pressed():
	onColorPressed(4)

func _on_color_5_pressed():
	onColorPressed(5)

func _on_color_6_pressed():
	onColorPressed(6)

func _on_color_7_pressed():
	onColorPressed(7)

func _on_color_8_pressed():
	onColorPressed(8)

func _on_color_45_pressed():
	onColorPressed(9)

func _on_color_10_pressed():
	onColorPressed(10)

func onColorPressed(num):
	get_node("exe"+str(num)).visible = true;
	get_node("l" + str(num)).visible = true;
	get_node("Num" + str(num)).visible = true;
	checkAndShowReadyBtn()

func checkAndShowReadyBtn():
	for i in range(1, 11):
		if(get_node("exe" + str(i)).visible == false):
			return
	get_node("readyBtn").visible = true

func _on_readyBtn_pressed():
	get_node("/root/global").setUSARouteInfo()
	get_tree().change_scene("res://scenes/RouteInfo.tscn")


func _on_SkipBtn_pressed():
	get_node("/root/global").setUSARouteInfo()
	get_tree().change_scene("res://scenes/RouteInfo.tscn")
