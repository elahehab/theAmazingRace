extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("readyBtn").visible = false

func _on_readyBtn_pressed():
	get_tree().change_scene("res://scenes/egypt/tiers.tscn")


func _on_AnimationPlayer_animation_finished(anim_name):
	get_node("readyBtn").visible = true


func _on_SkipBtn_pressed():
	get_tree().change_scene("res://scenes/egypt/tiers.tscn")
