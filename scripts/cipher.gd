extends Node2D

export var cipherMode = 1 #1, 2, 3

# Called when the node enters the scene tree for the first time.
func _ready():
	if(cipherMode == 1):
		get_node("E1").visible = true
		get_node("E2").visible = false
		get_node("E3").visible = false
	elif(cipherMode == 2):
		get_node("E1").visible = false
		get_node("E2").visible = true
		get_node("E3").visible = false
	else:
		get_node("E1").visible = false
		get_node("E2").visible = false
		get_node("E3").visible = true
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_closeBtn_pressed():
	get_parent().remove_child(self)
