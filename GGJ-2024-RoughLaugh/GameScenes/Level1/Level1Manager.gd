extends Node2D

var dudeman
var dudemanMouthClosed
var dudemanMouthOpen 
var stickProjector
	
var leftChopStick
var rightChopStick

var sushiPrefab1 = preload("res://GameScenes/Prefabs/sushi11.tscn")
var sushiPrefab2 = preload("res://GameScenes/Prefabs/sushi22.tscn")
var sushiPrefab3 = preload("res://GameScenes/Prefabs/sushi33.tscn")

var sushiPlatePrefab1 = preload("res://GameScenes/Prefabs/plate1.tscn")
var sushiPlatePrefab2 = preload("res://GameScenes/Prefabs/plate2.tscn")
var sushiPlatePrefab3 = preload("res://GameScenes/Prefabs/plate3.tscn")

var sushisSpawned = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	
	dudeman = $"../Dudeman"
	
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
	if get_tree().get_nodes_in_group("Sushi").size() == 0 && dudeman.sushiEaten < 3:
		var instantiatedSushi
		var instantiatedSushPlate
		
		if sushisSpawned == 0:
			instantiatedSushi = sushiPrefab2.instantiate()
			instantiatedSushPlate = sushiPlatePrefab2.instantiate()
			add_child(instantiatedSushi)
			add_child(instantiatedSushPlate)
			
			instantiatedSushi.position.x = 300;
			instantiatedSushi.position.y = 600;
			
			instantiatedSushPlate.position.x = 300;
			instantiatedSushPlate.position.y = 620;
		
		if sushisSpawned == 1:
			instantiatedSushi = sushiPrefab3.instantiate()
			instantiatedSushPlate = sushiPlatePrefab3.instantiate()
			add_child(instantiatedSushi)
			add_child(instantiatedSushPlate)
			
			instantiatedSushi.position.x = 1650;
			instantiatedSushi.position.y = 600;
			
			instantiatedSushPlate.position.x = 1650;
			instantiatedSushPlate.position.y = 620;
		
		sushisSpawned += 1;
		
		
