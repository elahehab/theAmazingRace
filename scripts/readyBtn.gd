extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_mouse_entered():
	get_node("Sprite").frame = 1


func _on_Button_mouse_exited():
	get_node("Sprite").frame = 0


func _on_Button_pressed():
	get_node("/root/global").startTimer()
	get_tree().change_scene('res://scenes/WorldMap.tscn')
