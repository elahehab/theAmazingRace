extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func playGizaMusic():
	get_node("gizaMusic").play()

func stopGizaMusic():
	get_node("gizaMusic").stop()
	
func playTajmahalMusic():
	get_node("tajMahalMusic").play()

func stopTajmahalMusic():
	get_node("tajMahalMusic").stop()
	
func playColoMusic():
	get_node("ColoMusic").play()

func stopColoMusic():
	get_node("ColoMusic").stop()
	
func playGrandPalaceMusic():
	get_node("GrandPalaceMusic").play()

func stopGrandPalaceMusic():
	get_node("GrandPalaceMusic").stop()
	
func playParisMusic():
	get_node("ParisMusic").play()

func stopParisMusic():
	get_node("ParisMusic").stop()
	
func playUSAMusic():
	get_node("USAMusic").play()

func stopUSAMusic():
	get_node("USAMusic").stop()
	
	
	
	