extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("franceBack").get_node("Panel").modulate.a = 0
	get_node("franceBack").get_node("AnimationPlayer").play("load")


func _on_readyBtn_pressed():
	get_tree().change_scene("res://scenes/france/letter.tscn")
