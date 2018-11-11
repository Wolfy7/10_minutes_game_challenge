extends Area2D

# Declare member variables here. Examples:
enum ENEMIE_TYPES{circel, square, triangle}
export (ENEMIE_TYPES) var	enemie_type

export (int) var speed = 150

signal kill_enemy

# Called when the node enters the scene tree for the first time.
func _ready():
	match enemie_type:
		ENEMIE_TYPES.circel:
			set_meta("Tag", "Circel")
			$circel.visible = true
			$triangle.visible = false
			$square.visible = false
		ENEMIE_TYPES.square:
			set_meta("Tag", "Square")
			$square.visible = true
			$circel.visible = false
			$triangle.visible = false
		ENEMIE_TYPES.triangle:
			set_meta("Tag", "Triangle")
			$triangle.visible = true
			$circel.visible = false
			$square.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= speed * delta


func _on_Enemys_area_entered(area):
	print(area.get_meta("Tag") + " == " + get_meta("Tag"))
	if area.get_meta("Tag") == get_meta("Tag"):
		emit_signal("kill_enemy")
		area.queue_free()
		queue_free()
	else:
		print("GAME OVER")
		get_tree().reload_current_scene()
	
