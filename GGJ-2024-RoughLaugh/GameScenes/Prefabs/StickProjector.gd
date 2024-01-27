extends Node2D

var leftHead : Node2D
var rightHead : Node2D

func _ready():
	leftHead = $LeftChopstickHead
	rightHead = $RightChopstickHead
	
func _process(delta):
	queue_redraw()# Ensure that _draw() is called on every frame

func _draw():
	var leftHeadCenter = (leftHead.global_position)
	var rightHeadCenter = (rightHead.global_position)

	var p1 = Vector2(120, 900)
	var p2 = Vector2(1800, 900)
	
	print(leftHeadCenter)
	print(rightHeadCenter)
	draw_line(leftHeadCenter, p1,Color("#ff8f46"), 24)
	draw_line(rightHeadCenter, p2, Color("#ff8f46"), 24)
#
#
#func update_line(point1, point2):
	#draw_line(point1, point2, Color(1, 1, 1), 5)

