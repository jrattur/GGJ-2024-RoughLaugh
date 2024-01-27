extends Node2D

var dudeman
var dudemanMouthClosed
var dudemanMouthOpen 
var stickProjector
	
var leftChopStick
var rightChopStick

var sushi 

# Called when the node enters the scene tree for the first time.
func _ready():
	
	dudeman = $"../dudeman"
	
	dudemanMouthClosed = dudeman.get_node("mouthclosed")
	dudemanMouthOpen = dudeman.get_node("mouthopen")
	
	stickProjector = $"../StickProjector"
	
	leftChopStick = stickProjector.get_node("LeftChopstickHead")
	rightChopStick = stickProjector.get_node("RightChopstickHead")

	sushi = $"../Sushi"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	var leftDistanceToSushi = leftChopStick.global_position - sushi.global_position
	var rightDistanceToSushi = rightChopStick.global_position - sushi.global_position
	
	if leftDistanceToSushi.length() < 170 && rightDistanceToSushi.length() < 170:
		dudemanMouthClosed.visible = false
		dudemanMouthOpen.visible = true
	else:
		dudemanMouthClosed.visible = true
		dudemanMouthOpen.visible = false
