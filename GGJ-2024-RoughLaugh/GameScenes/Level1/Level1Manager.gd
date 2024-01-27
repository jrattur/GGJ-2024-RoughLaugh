extends Node2D

var dudeman
var dudemanMouthClosed
var dudemanMouthOpen 
var stickProjector
	
var leftChopStick
var rightChopStick

var sushiPrefab = preload("res://Player/sushi.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	
	dudeman = $"../dudeman"
	
	#dudemanMouthClosed = dudeman.get_node("mouthclosed")
	#dudemanMouthOpen = dudeman.get_node("mouthopen")
	
	stickProjector = $"../StickProjector"
	
	leftChopStick = stickProjector.get_node("LeftChopstickHead")
	rightChopStick = stickProjector.get_node("RightChopstickHead")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	#for member in get_tree().get_nodes_in_group("Sushi"):
		#var leftDistanceToSushi = leftChopStick.global_position - member.global_position
		#var rightDistanceToSushi = rightChopStick.global_position - member.global_position
	#
		#if leftDistanceToSushi.length() < 170 && rightDistanceToSushi.length() < 170:
			#dudemanMouthClosed.visible = false
			#dudemanMouthOpen.visible = true
		#else:
			#dudemanMouthClosed.visible = true
			#dudemanMouthOpen.visible = false
#
#
	if get_tree().get_nodes_in_group("Sushi").size() == 0:
		var instantiatedSushi = sushiPrefab.instantiate()
		add_child(instantiatedSushi)
		instantiatedSushi.position.x = 1000;
		instantiatedSushi.position.y = 600;
		
		
