extends Node2D


func _ready():
	pass


func _on_readyBtn_pressed():
	var timeSpent = get_node("/root/global").getTimeInSeconds()
	var hours = floor(timeSpent/3600)
	timeSpent -= hours*3600
	var minutes = floor(timeSpent/60)
	timeSpent -= minutes*60
	var seconds = timeSpent
	if(hours < 10):
		hours = '0' + str(hours)
	if(minutes < 10):
		minutes = '0' + str(minutes)
	if(seconds < 10):
		seconds = '0' + str(seconds)
	get_node("time").text = str(hours)+" : "+str(minutes)+" : "+str(seconds)
