extends Node2D

var START_SCENE = preload('res://scenes/Start.tscn')

# Called when the node enters the scene tree for the first time.
func _ready():
	var start = START_SCENE.instance()
	add_child(start)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
