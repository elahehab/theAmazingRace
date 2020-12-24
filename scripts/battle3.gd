extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Color1").visible = false
	get_node("Color2").visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_readyBtn_pressed():
	get_node("Color1").visible = true
	get_node("Color2").visible = true


func _on_nextSceneBtn_pressed():
	get_tree().change_scene("res://scenes/italy/battle4.tscn")
