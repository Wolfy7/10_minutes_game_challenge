extends Area2D

export (PackedScene) var bullets

# Declare member variables here. Examples:
var can_shoot : bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	set_meta("Tag", "Player")


func shoot(type : String) -> void:
	if !can_shoot:
		return
	var bullet = bullets.instance()
	match type:
		"circel":
			bullet.bullet_type = bullet.BULLET_TYPES.circel
		"square":
			bullet.bullet_type = bullet.BULLET_TYPES.square
		"triangle":
			bullet.bullet_type = bullet.BULLET_TYPES.triangle
	add_child(bullet)
	can_shoot = false
	$Timer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("circel"): # A
		shoot("circel")
	if Input.is_action_pressed("square"): # S
		shoot("square")
	if Input.is_action_pressed("triangle"): # D
		shoot("triangle")
	

func _on_Timer_timeout():
	can_shoot = true
