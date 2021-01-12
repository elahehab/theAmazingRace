extends Node2D

var CIPHER = preload("res://scenes/egypt/cipher.tscn")
var animFinished

# Called when the node enters the scene tree for the first time.
func _ready():
	animFinished = 0
	get_node("pyramidBack").get_node("AnimationPlayer").play("load")

func _on_tier3_mouse_entered():
	if(animFinished):
		get_node("tier3").modulate = Color(0, 0, 0)


func _on_tier3_mouse_exited():
	if(animFinished):
		get_node("tier3").modulate = Color(1, 1, 1)


func _on_tier2_mouse_entered():
	if(animFinished):
		get_node("tier2").modulate = Color(0, 0, 0)


func _on_tier2_mouse_exited():
	if(animFinished):
		get_node("tier2").modulate = Color(1, 1, 1)


func _on_tier1_mouse_entered():
	if(animFinished):
		get_node("tier1").modulate = Color(0, 0, 0)


func _on_tier1_mouse_exited():
	if(animFinished):
		get_node("tier1").modulate = Color(1, 1, 1)


func _on_tier3_pressed():
	if(animFinished):
		var cipher = CIPHER.instance()
		cipher.cipherMode = 3
		cipher.position = Vector2(153, 38)
		add_child(cipher)


func _on_tier2_pressed():
	if(animFinished):
		var cipher = CIPHER.instance()
		cipher.cipherMode = 2
		cipher.position = Vector2(153, 38)
		add_child(cipher)


func _on_tier1_pressed():
	if(animFinished):
		var cipher = CIPHER.instance()
		cipher.cipherMode = 1
		cipher.position = Vector2(153, 38)
		add_child(cipher)


func _on_nextSceneBtn_pressed():
	get_node("/root/global").setCambodiaRouteInfo()
	get_tree().change_scene("res://scenes/RouteInfo.tscn")


func _on_AnimationPlayer_animation_finished(anim_name):
	animFinished = 1
