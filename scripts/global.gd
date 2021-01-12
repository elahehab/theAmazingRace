extends Node

var countryTxt = ''
var cityTxt = ''
var monumentTxt = ''
var routeInfoNextScene = ''
var travelSceneNextScene = ''
var guideStep

func setIndiaRouteInfo():
	countryTxt = 'THE PLACE OF CHAKRA'
	cityTxt = 'GOLDEN TRIANGLE TOURIST CIRCUIT'
	monumentTxt = 'THE GRAND BURIAL CHAMBER OF THE EMPEROR'
	routeInfoNextScene = 'res://scenes/travelScene.tscn'
	travelSceneNextScene = 'res://scenes/tajmahal/TajMahalTitle.tscn'
	guideStep = 1

func setEgyptRouteInfo():
	countryTxt = 'THE PLACE OF THE ANCIENT AMUN-RA'
	cityTxt = 'WEST OF THE BANK OF THE NILE'
	monumentTxt = 'THE GRAND NECROPOLIS OF ANCIENT KINGS'
	routeInfoNextScene = 'res://scenes/travelScene.tscn'
	travelSceneNextScene = 'res://scenes/egypt/pyramidTitle.tscn'
	guideStep = 2
	
func setCambodiaRouteInfo():
	countryTxt = 'KAMPUCHEA THE ANCIENT KHMER KINGDOM'
	cityTxt = 'IN THE DEFEAT OF SIAM'
	monumentTxt = 'THE DEDICATED TEMPLE OF THE GOD VISHNU'
	routeInfoNextScene = 'res://scenes/travelScene.tscn'
	travelSceneNextScene = 'res://scenes/cambodia/cambodiaTitle.tscn'
	guideStep = 3

func setUSARouteInfo():
	countryTxt = 'THE WORLD\'S LARGEST ECONOMY'
	cityTxt = 'THE BLACK HILL REGION OF PENNINGTON COUNTY'
	monumentTxt = 'NAME OF FOUR **********'
	routeInfoNextScene = 'res://scenes/travelScene.tscn'
	travelSceneNextScene = 'res://scenes/usa/USATitle.tscn'
	guideStep = 4

func setFranceRouteInfo():
	countryTxt = 'THE ANTHEM OF "LA MARSEILLAISE"'
	cityTxt = 'THE CITY OF LIGHT'
	monumentTxt = 'THE "LA DAME DE FER" WHAT DOES IT STAND FOR?'
	routeInfoNextScene = 'res://scenes/travelScene.tscn'
	travelSceneNextScene = 'res://scenes/france/franceTitle.tscn'
	guideStep = 5

func setGreeceRouteInfo():
	countryTxt = 'THE HELLENIC REPUBLIC, A CRADLE OF WESTERN CIVILIZATION'
	cityTxt = 'RECORDED HISTORY OF 3400 YEARS'
	monumentTxt = 'THE EXTREMITY CITADEL OF THE FIRST KING'
	routeInfoNextScene = 'res://scenes/travelScene.tscn'
	travelSceneNextScene = 'res://scenes/greece/greeceTitle.tscn'
	guideStep = 6
	
func setItalyRouteInfo():
	countryTxt = 'HOME TO EUROPE\'S THREE ACTIVE VOLCANOES'
	cityTxt = 'THE RULES OF THE ANCIENT EMPIRE'
	monumentTxt = 'THE FLAVIAN AMPHITHEATER'
	routeInfoNextScene = 'res://scenes/travelScene.tscn'
	travelSceneNextScene = 'res://scenes/italy/italyTitle.tscn'
	guideStep = 8

func setThaiRouteInfo():
	countryTxt = 'THE LAND OF THE FREE'
	cityTxt = 'KRUNG THEP MAHA NAKHON'
	monumentTxt = 'THE PRESIDENCE OF KINGS OF SIAM'
	routeInfoNextScene = 'res://scenes/travelScene.tscn'
	travelSceneNextScene = 'res://scenes/thailand/thailandTitle.tscn'
	guideStep = 9
	



