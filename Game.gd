extends Node2D

# Declare member variables here. Examples:
onready var score_value = $HUD/Score/Value

# Called when the node enters the scene tree for the first time.
func _ready():
	score_value = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
