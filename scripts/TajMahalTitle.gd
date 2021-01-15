extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("/root/musicScene").playTajmahalMusic()




func _on_AnimationPlayer_animation_finished(anim_name):
	get_tree().change_scene("res://scenes/tajmahal/TajMahal.tscn")
