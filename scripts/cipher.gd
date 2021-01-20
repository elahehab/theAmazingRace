extends Node2D

export var cipherMode = 1 #1, 2, 3
var revealed = false

# Called when the node enters the scene tree for the first time.
func _ready():
	if(cipherMode == 1):
		get_node("E1").visible = true
		get_node("E2").visible = false
		get_node("E3").visible = false
	elif(cipherMode == 2):
		get_node("E1").visible = false
		get_node("E2").visible = true
		get_node("E3").visible = false
	else:
		get_node("E1").visible = false
		get_node("E2").visible = false
		get_node("E3").visible = true


func _on_closeBtn_pressed():
	get_parent().remove_child(self)


func _on_revealBtn_pressed():
	revealed = true
	if(cipherMode == 1):
		get_parent().tier1Revealed = true
		get_node("Label").text = "Who is the Greatest Egyptian Pharaoh?"
	elif(cipherMode == 2):
		get_parent().tier2Revealed = true
		get_node("Label").text = "The Last Three Miss Egypt? From 2018-2020"
	elif(cipherMode == 3):
		get_parent().tier3Revealed = true
		get_node("Label").text = "The Top Five Most Worshipped Egypt Gods?"
	get_parent().checkAndShowNextBtn()
