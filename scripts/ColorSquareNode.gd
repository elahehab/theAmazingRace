extends Node2D

export (float) var r = -1
export (float) var g = -1
export (float) var b = -1

var clicked = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Button_mouse_entered():
	get_node("Button").get_node("square").modulate = Color(0.31, 0.31, 0.31)

func _on_Button_mouse_exited():
	if(clicked == 0):
		get_node("Button").get_node("square").modulate = Color(0, 0, 0)
	else:
		get_node("Button").get_node("square").modulate = Color(r/255, g/255, b/255)


func _on_Button_pressed():
	clicked = 1
	get_parent().showGoBtn()
	if(r != -1 and g != -1 and b != -1):
		get_node("Button").get_node("square").modulate = Color(r/255, g/255, b/255)
