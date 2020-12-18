extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Button").disabled = true

func showGoBtn():
	if(get_node("ColorSquare").clicked == 1 and
	get_node("ColorSquare2").clicked == 1 and
	get_node("ColorSquare3").clicked == 1 and
	get_node("ColorSquare4").clicked == 1 and
	get_node("ColorSquare5").clicked == 1 and
	get_node("ColorSquare6").clicked == 1 and
	get_node("ColorSquare7").clicked == 1 and
	get_node("ColorSquare8").clicked == 1):
		get_node("Button").disabled = false
		get_node("AnimationPlayer").play("buttonFade")


func _on_LetsGoButton_pressed():
	get_node("/root/global").countryTxt = 'THE PLACE OF CHAKRA'
	get_node("/root/global").cityTxt = 'GOLDEN TRIANGLE TOURIST CIRCUIT'
	get_node("/root/global").monumentTxt = 'THE GRAND BURIAL CHAMBER OF THE EMPEROR'
	get_tree().change_scene("res://scenes/RouteInfo.tscn")
#	add_child(routeInfoScene)
