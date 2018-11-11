extends Area2D

# Declare member variables here. Examples:
enum BULLET_TYPES{circel, square, triangle}
export (BULLET_TYPES) var	bullet_type

export (int) var speed = 150

# Called when the node enters the scene tree for the first time.
func _ready():
	match bullet_type:
		BULLET_TYPES.circel:
			$circel.visible = true
			$triangle.visible = false
			$square.visible = false
		BULLET_TYPES.square:
			$square.visible = true
			$circel.visible = false
			$triangle.visible = false
		BULLET_TYPES.triangle:
			$triangle.visible = true
			$circel.visible = false
			$square.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x += speed * delta
