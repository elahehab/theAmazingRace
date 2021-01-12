extends Node2D

export (Texture) var flagFile
export (String) var flagTxt
#var flagFile = preload("res://assets/images/countryFlags/India Flag.png")
# Called when the node enters the scene tree for the first time.
func _ready():
	var points = PoolVector2Array()
	var w = 180
	var h = 80
	points.append(Vector2(0, 0))
	points.append(Vector2(w*0.8, 0))
	points.append(Vector2(w, h/2))
	points.append(Vector2(w*0.8, h))
	points.append(Vector2(0, h))
	get_node("btn/Polygon2D").set_polygon(points)
	get_node("btn/Polygon2D").color = Color(0.47, 0.47, 0.47)

	
func showInfo():
	get_node("btn/Polygon2D").color = Color(0.5, 0.5, 0.5)
	get_node("btn/Polygon2D").texture = flagFile
	get_node("btn/Label").visible = false
	var uv = PoolVector2Array()
	uv.append(Vector2(0, 0))
	uv.append(Vector2(flagFile.get_width()*0.8, 0))
	uv.append(Vector2(flagFile.get_width(), flagFile.get_height()*0.5))
	uv.append(Vector2(flagFile.get_width()*0.8, flagFile.get_height()))
	uv.append(Vector2(0, flagFile.get_height()))
	get_node("btn/Polygon2D").set_uv(uv)
	get_node("btn/countryTxt").text = flagTxt


func _on_btn_pressed():
	showInfo()
