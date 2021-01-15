extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("nextBtn").visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_readyBtn_pressed():
	get_tree().change_scene("res://scenes/italy/avengers.tscn")


func _on_Timer_timeout():
	get_node("nextBtn").visible = true
