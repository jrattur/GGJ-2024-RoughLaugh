extends Sprite2D

var _stumpSign: Sprite2D
var _timerRunning = false
var _timer = 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	_stumpSign = $StumpSign
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if _timerRunning:
		_timer += delta
		if 2.0 <= _timer:
			get_tree().change_scene_to_file("res://GameScenes/StoryFrames/ComicFrame.tscn")

func _on_paper_area_entered(area: Area2D):
	_stumpSign.visible = true
	_stumpSign.global_position = area.global_position
	_timerRunning = true
