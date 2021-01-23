extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("roadBlock").get_node("AnimationPlayer").play("load")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_nextSceneBtn_pressed():
	get_tree().change_scene("res://scenes/roadBlock/picture.tscn")


func _on_SkipBtn_pressed():
	get_tree().change_scene("res://scenes/roadBlock/picture.tscn")
