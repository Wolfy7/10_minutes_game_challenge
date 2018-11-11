extends Node2D

var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	Global.Game = self
	Global.HUD.update_score()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
