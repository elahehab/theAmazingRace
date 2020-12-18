extends Button

export var r = -1
export var g = -1
export var b = -1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Button_mouse_entered():
	get_node("square").modulate = Color(0.31, 0.31, 0.31)


func _on_Button_mouse_exited():
	if(r == -1 or g == -1 or b == -1):
		get_node("square").modulate = Color(0, 0, 0)
	else:
		get_node("square").modulate = Color(r, g, b)


func _on_Button_pressed():
	if(r != -1 and g != -1 and b != -1):
		get_node("square").modulate = Color(r, g, b)
