extends Node2D

var score = 0

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	score += delta
	
	$Score.set_text("[center]%s[/center]" % str("%.2f" % score))
	
func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed:
			score += 1
