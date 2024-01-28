extends RigidBody2D

var _openTimer = 0
var _knob : Node2D;

# Called when the node enters the scene tree for the first time.
func _ready():
	# 自身の親ノードを取得
	var knobNode = $"../../KnobSpriteRoot"
	if knobNode:
		print("knobNode exist")
		# ノードが見つかった場合の処理
		_knob = knobNode;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	_knob.rotation = rotation;
	if rotation_degrees < -85:
		_openTimer += delta
		if 1.0 < _openTimer:
			# some SE!
			get_tree().change_scene_to_file("res://GameScenes/StoryFrames/StoryFrame4.tscn")
	
func _physics_process(delta):
	add_constant_torque(2000)
