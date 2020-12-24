extends Node2D

var usaFlag = preload("res://assets/images/usa/USA.png")
var thaiFlag = preload("res://assets/images/usa/Thai.jpg")
var nigeriaFlag = preload("res://assets/images/usa/Nigeria.jpg")
var turkeyFlag = preload("res://assets/images/usa/Turkey.png")
var icelandFlag = preload("res://assets/images/usa/Iceland.jpg")
var russiaFlag = preload("res://assets/images/usa/Russia.jpg")
var lenaninFlag = preload("res://assets/images/usa/Lebanon.png")
var malayFlag = preload("res://assets/images/usa/Malay.jpg")
var suFlag = preload("res://assets/images/usa/SU.png")
var greenlandFlag = preload("res://assets/images/usa/Greenland.jpg")
var zimFlag = preload("res://assets/images/usa/Zim.png")
var angolaFlag = preload("res://assets/images/usa/Angola.png")
var walesFlag = preload("res://assets/images/usa/Wales.jpg")
var somaliaFlag = preload("res://assets/images/usa/Somalia.png")
var singaporeFlag = preload("res://assets/images/usa/Singapore.png")

var flags = {usaFlag: 45, 
			thaiFlag: 23,
			nigeriaFlag: 14,
			turkeyFlag: 7,
			icelandFlag: 1,
			russiaFlag: 3,
			lenaninFlag: 12,
			malayFlag: 3,
			suFlag: 2,
			greenlandFlag: 4,
			zimFlag: 1,
			angolaFlag: 3,
			walesFlag: 4,
			somaliaFlag: 8,
			singaporeFlag: 3}
var index = 0
var pageNum = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	loadNextFlag()

func _on_Button_pressed():
	loadNextFlag()
	
func loadNextFlag():
	var keys = flags.keys()
	if(index < keys.size()):
		var value = keys[index]
		get_node("pageNum").text = str(pageNum)
		get_node("Num").text = str(flags[value])
		get_node("flagPic").texture = value
		index = index + 1
		pageNum = pageNum + 1
	else:
		get_node("/root/global").countryTxt = 'THE ANTHEM OF "LA MARSEILLAISE"'
		get_node("/root/global").cityTxt = 'THE CITY OF LIGHT'
		get_node("/root/global").monumentTxt = 'THE "LA DAME DE FER" WHAT DOES IT STAND FOR?'
		get_node("/root/global").routeInfoNextScene = 'res://scenes/travelScene.tscn'
		get_node("/root/global").travelSceneNextScene = 'res://scenes/france/franceTitle.tscn'
		get_tree().change_scene("res://scenes/RouteInfo.tscn")
