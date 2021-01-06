extends Node2D

var usaFlag = preload("res://assets/images/usa/USA.png")
var thaiFlag = preload("res://assets/images/usa/Thai.jpg")
var nigeriaFlag = preload("res://assets/images/usa/Nigeria.jpg")
var turkeyFlag = preload("res://assets/images/usa/Turkey.png")
var icelandFlag = preload("res://assets/images/usa/Iceland.jpg")
var russiaFlag = preload("res://assets/images/usa/Russia.jpg")
var lebanonFlag = preload("res://assets/images/usa/Lebanon.png")
var malayFlag = preload("res://assets/images/usa/Malay.jpg")
var suFlag = preload("res://assets/images/usa/SU.png")
var greenlandFlag = preload("res://assets/images/usa/Greenland.jpg")
var zimFlag = preload("res://assets/images/usa/Zim.png")
var angolaFlag = preload("res://assets/images/usa/Angola.png")
var walesFlag = preload("res://assets/images/usa/Wales.jpg")
var somaliaFlag = preload("res://assets/images/usa/Somalia.png")
var singaporeFlag = preload("res://assets/images/usa/Singapore.png")

var usaPres = preload("res://assets/images/usa/presidents/1- Donald Trump.jpg")
var thaiPres = preload("res://assets/images/usa/presidents/2-Thaksin Sinawatra.jpg")
var nigeriaPres = preload("res://assets/images/usa/presidents/3- Jonathan Goodluck.jpg")
var turkeyPres = preload("res://assets/images/usa/presidents/4- Kenan Evren.jpg")
var icelandPres = preload("res://assets/images/usa/presidents/5-Sveinn_Björnsson.jpg")
var russiaPres = preload("res://assets/images/usa/presidents/6- Dimitry Medvedev.jpg")
var lebanonPres = preload("res://assets/images/usa/presidents/7- Michel Suleiman.jpeg")
var malayPres = preload("res://assets/images/usa/presidents/8- Hussein Onn.jpg")
var suPres = preload("res://assets/images/usa/presidents/9-Joseph Stalin Young.jpg")
var greenlandPres = preload("res://assets/images/usa/presidents/10-Kuupik Kleist.jpg")
var zimPres = preload("res://assets/images/usa/presidents/11-Canaan Banana.jpg")
var angolaPres = preload("res://assets/images/usa/presidents/12-jose_eduardo_dos_santos.jpg")
var walesPres = preload("res://assets/images/usa/presidents/13-James Madison.jpg")
var somaliaPres = preload("res://assets/images/usa/presidents/14-Hassan_Sheik_Mohamud.jpg")
var singaporePres = preload("res://assets/images/usa/presidents/15-Devan Nair.jpg")

var flags = {usaFlag: 45, 
			thaiFlag: 23,
			nigeriaFlag: 14,
			turkeyFlag: 7,
			icelandFlag: 1,
			russiaFlag: 3,
			lebanonFlag: 12,
			malayFlag: 3,
			suFlag: 2,
			greenlandFlag: 4,
			zimFlag: 1,
			angolaFlag: 3,
			walesFlag: 4,
			somaliaFlag: 8,
			singaporeFlag: 3}
			
var presidents = {
	usaPres: "Donald Trump",
	thaiPres: "Thaksin Sinawatra",
	nigeriaPres: "Jonathan Goodluck",
	turkeyPres: "Kenan Evren",
	icelandPres: "Sveinn Björnsson",
	russiaPres: "Dimitry Medvedev",
	lebanonPres: "Michel Suleiman",
	malayPres: "Hussein Onn",
	suPres: "Joseph Stalin",
	greenlandPres: "Kuupik Kleist",
	zimPres: "Canaan Banana",
	angolaPres: "Jose Eduardo dos Santos",
	walesPres: "James Madison",
	somaliaPres: "Hassan Sheik Mohamud",
	singaporePres: "Devan Nair"
}
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
		get_node("flagPic").visible = true
		get_node("Num").visible = true
		get_node("president").visible = false
		get_node("presidentName").visible = false
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


func _on_revealBtn_pressed():
	get_node("flagPic").visible = false
	get_node("Num").visible = false
	get_node("president").visible = true
	get_node("presidentName").visible = true
	var keys = presidents.keys()
	var currentPresPic = keys[index-1]
	get_node("president").texture = currentPresPic
	get_node("presidentName").text = presidents[currentPresPic]
