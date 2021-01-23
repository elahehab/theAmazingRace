extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("/root/musicScene").playParisMusic()


func _on_AnimationPlayer_animation_finished(anim_name):
	get_tree().change_scene("res://scenes/france/france.tscn")


func _on_SkipBtn_pressed():
	get_tree().change_scene("res://scenes/france/france.tscn")
