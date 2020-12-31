extends Node2D

var CIPHER = preload("res://scenes/egypt/cipher.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("pyramidBack").get_node("AnimationPlayer").play("load")

func _on_tier3_mouse_entered():
	get_node("tier3").modulate = Color(0, 0, 0)


func _on_tier3_mouse_exited():
	get_node("tier3").modulate = Color(1, 1, 1)


func _on_tier2_mouse_entered():
	get_node("tier2").modulate = Color(0, 0, 0)


func _on_tier2_mouse_exited():
	get_node("tier2").modulate = Color(1, 1, 1)


func _on_tier1_mouse_entered():
	get_node("tier1").modulate = Color(0, 0, 0)


func _on_tier1_mouse_exited():
	get_node("tier1").modulate = Color(1, 1, 1)


func _on_tier3_pressed():
	var cipher = CIPHER.instance()
	cipher.cipherMode = 3
	cipher.position = Vector2(153, 38)
	add_child(cipher)


func _on_tier2_pressed():
	var cipher = CIPHER.instance()
	cipher.cipherMode = 2
	cipher.position = Vector2(153, 38)
	add_child(cipher)


func _on_tier1_pressed():
	var cipher = CIPHER.instance()
	cipher.cipherMode = 1
	cipher.position = Vector2(153, 38)
	add_child(cipher)


func _on_nextSceneBtn_pressed():
	get_node("/root/global").countryTxt = 'KAMPUCHEA THE ANCIENT KHMER KINGDOM'
	get_node("/root/global").cityTxt = 'IN THE DEFEAT OF SIAM'
	get_node("/root/global").monumentTxt = 'THE DEDICATED TEMPLE OF THE GOD VISHNU'
	get_node("/root/global").routeInfoNextScene = 'res://scenes/travelScene.tscn'
	get_node("/root/global").travelSceneNextScene = 'res://scenes/cambodia/cambodiaTitle.tscn'
	get_tree().change_scene("res://scenes/RouteInfo.tscn")
