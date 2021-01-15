extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("italyBack").get_node("Panel").modulate.a = 0
	get_node("italyBack").get_node("AnimationPlayer").play("backAnim")


func _on_readyBtn_pressed():
	get_node("/root/musicScene").stopColoMusic()
	get_tree().change_scene("res://scenes/italy/jurassic.tscn")
