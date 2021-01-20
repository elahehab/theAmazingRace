extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func playGizaMusic():
	stopAll()
	get_node("gizaMusic").play()

func stopGizaMusic():
	stopAll()
	get_node("gizaMusic").stop()
	
func playTajmahalMusic():
	stopAll()
	get_node("tajMahalMusic").play()

func stopTajmahalMusic():
	stopAll()
	get_node("tajMahalMusic").stop()
	
func playColoMusic():
	stopAll()
	get_node("ColoMusic").play()

func stopColoMusic():
	stopAll()
	get_node("ColoMusic").stop()
	
func playGrandPalaceMusic():
	stopAll()
	get_node("GrandPalaceMusic").play()

func stopGrandPalaceMusic():
	stopAll()
	get_node("GrandPalaceMusic").stop()
	
func playParisMusic():
	stopAll()
	get_node("ParisMusic").play()

func stopParisMusic():
	stopAll()
	get_node("ParisMusic").stop()
	
func playUSAMusic():
	stopAll()
	get_node("USAMusic").play()

func stopUSAMusic():
	stopAll()
	get_node("USAMusic").stop()
	
func stopAll():
	get_node("gizaMusic").stop()
	get_node("tajMahalMusic").stop()
	get_node("ColoMusic").stop()
	get_node("GrandPalaceMusic").stop()
	get_node("ParisMusic").stop()
	get_node("USAMusic").stop()
	
	
	
	