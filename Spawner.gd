extends Area2D

export (PackedScene) var enemies

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	$Timer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	var enemie = enemies.instance()
	var type = randi() % enemie.ENEMIE_TYPES.size()
	enemie.enemie_type = type
	add_child(enemie)
	$Timer.start()
