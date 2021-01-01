extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


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
	
func onColorPressed(num):
	get_node("exe"+str(num)).visible = true;
	get_node("l" + str(num)).visible = true;
	get_node("Num" + str(num)).visible = true;


func _on_nextSceneBtn_pressed():
	get_node("/root/global").countryTxt = 'THE WORLD\'S LARGEST ECONOMY'
	get_node("/root/global").cityTxt = 'THE BLACK HILL REGION OF PENNINGTON COUNTY'
	get_node("/root/global").monumentTxt = 'NAME OF FOUR **********'
	get_node("/root/global").routeInfoNextScene = 'res://scenes/travelScene.tscn'
	get_node("/root/global").travelSceneNextScene = 'res://scenes/usa/USATitle.tscn'
	get_tree().change_scene("res://scenes/RouteInfo.tscn")
