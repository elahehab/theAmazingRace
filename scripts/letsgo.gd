extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("thailandBack/AnimationPlayer").play("backAnim")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_AnimationPlayer_animation_finished(anim_name):
	get_node("/root/global").stopTimer()
	get_node("Timer").wait_time = 30
	get_node("Timer").start()


func _on_Timer_timeout():
	get_tree().change_scene("res://scenes/thailand/finalScene.tscn")
