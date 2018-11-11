extends Area2D

# Declare member variables here. Examples:
enum ENEMIE_TYPES{circel, square, triangle}
export (ENEMIE_TYPES) var	enemie_type

export (int) var speed = 150

# Called when the node enters the scene tree for the first time.
func _ready():
	match enemie_type:
		ENEMIE_TYPES.circel:
			$circel.visible = true
			$triangle.visible = false
			$square.visible = false
		ENEMIE_TYPES.square:
			$square.visible = true
			$circel.visible = false
			$triangle.visible = false
		ENEMIE_TYPES.triangle:
			$triangle.visible = true
			$circel.visible = false
			$square.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= speed * delta


func _on_Enemys_area_entered(area):
	#print(str(area.bullet_type) + " == " + str(enemie_type))
	if area.bullet_type == enemie_type:
		area.queue_free()
		queue_free()
		Global.Game.score += 10
		Global.HUD.update_score()
	else:
		print("GAME OVER")
		get_tree().reload_current_scene()
	
