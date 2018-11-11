extends CanvasLayer

func _ready():
	Global.HUD = self

func update_score():
	$Score/Value.text = str(Global.Game.score)