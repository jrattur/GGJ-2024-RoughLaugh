extends Node2D

var leftHead : Node2D
var rightHead : Node2D
var leftStick: Line2D
var rightStick: Line2D
var leftBase: Node2D
var rightBase: Node2D

func _ready():
	leftHead = $LeftChopstickHead
	rightHead = $RightChopstickHead
	leftStick = $LeftChopstick
	rightStick = $RightChopstick
	leftBase = $LeftChopstickBase
	rightBase = $RightChopstickBase

	
func _process(delta):
	leftStick.points = [leftHead.global_position, leftBase.global_position]
	rightStick.points = [rightHead.global_position, rightBase.global_position]
	#queue_redraw()# Ensure that _draw() is called on every frame

#func _draw():
	#var leftHeadCenter = (leftHead.global_position)
	#var rightHeadCenter = (rightHead.global_position)
#
	#var p1 = leftBase.position
	#var p2 = rightBase.position
	
	#draw_line(leftHeadCenter, p1,Color("#ff8f46"), 24)
	#draw_line(rightHeadCenter, p2, Color("#ff8f46"), 24)
#
#
#func update_line(point1, point2):
	#draw_line(point1, point2, Color(1, 1, 1), 5)

