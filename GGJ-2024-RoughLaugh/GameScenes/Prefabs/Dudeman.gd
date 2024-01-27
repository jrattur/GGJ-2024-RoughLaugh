extends Node2D

var timerValue = 0.0
var timerRunning = false
var eatingTime = 3;

var sushiEaten = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play('hungry')


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if timerRunning:
		timerValue += delta
		
		if timerValue > eatingTime:
			
			if sushiEaten == 3:
				get_tree().change_scene_to_file("res://GameScenes/StoryFrames/StoryFrame2.tscn")
			
			timerRunning  = false
			$AnimationPlayer.play('hungry')
	

func _on_area_2d_body_entered(body):
	if body.is_in_group("Sushi"):
		sushiEaten += 1
		
		
		
		
		timerValue = 0.0
		timerRunning = true
		$AnimationPlayer.play('eating')
		body.queue_free()
