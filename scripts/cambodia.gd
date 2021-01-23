extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("cambodiaBack").get_node("Panel").modulate.a = 0
	get_node("cambodiaBack").get_node("AnimationPlayer").play("load")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_readyBtn_pressed():
	get_tree().change_scene("res://scenes/cambodia/Exercise.tscn")


func _on_SkipBtn_pressed():
	get_tree().change_scene("res://scenes/cambodia/Exercise.tscn")
