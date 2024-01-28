extends RigidBody2D

var isInked = false
var redHead: Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	redHead = $Stump/RedHead;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_2d_body_entered(body: PhysicsBody2D):
	if -80 < rotation_degrees && rotation_degrees < 80:
		isInked = true;
		redHead.visible = true;


