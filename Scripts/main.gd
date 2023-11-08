extends Node2D

var score = 0
var clicks = 0
var cps: int = 0
var time = 0
var idle_mps = 0.005

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	score += idle_mps
	time += delta
	$Score.set_text("[center]%s[/center]" % str("%.2f" % score))
	if(time >= 1):
		cps = clicks
		$CPS.set_text("[center]%s[/center]" % "Clicks per Second: " + str(cps))
		clicks = 0
		time = 0
	
func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed:
			score += 1
			clicks += 1
