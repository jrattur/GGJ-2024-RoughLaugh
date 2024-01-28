extends Node2D


var timerValue = 0.0
var timerRunning = true
var eatingTime = 3

var animations = ["idle", "happy", "nervous"]

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("idle")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if timerRunning:
		timerValue += delta
		
		if timerValue > eatingTime:
			
			timerValue  = 0.0
			$AnimationPlayer.play(animations[randi() % animations.size()])
