extends RigidBody2D

var _openTimer = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if rotation_degrees < -85:
		_openTimer += delta
		if 1.0 < _openTimer:
			# some SE!
			get_tree().change_scene_to_file("res://GameScenes/Level3/Level3.tscn")
	
func _physics_process(delta):
	add_constant_torque(2000)
