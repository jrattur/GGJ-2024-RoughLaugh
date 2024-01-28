extends Node2D

var scroll_speed = 800
var scroll_limit = - 3240 + 1080 - 100
# 4320 would be the height of the image, 1080 is the end buffer and 100 pixels to give room for the button

func _process(delta):
	if Input.is_action_pressed("r_move_down"):
		scroll_image(delta)
	elif Input.is_action_pressed("r_move_up"):
		scroll_image(-delta)
		

	if position.y < scroll_limit:
		position.y = scroll_limit
	elif position.y > 0:
		position.y = 0

func scroll_image(delta):
	# Scroll the image based on the delta time and scroll speed
	position.y -= delta * scroll_speed

func _ready():
	# Create a button at the bottom to go to the next scene
	pass


func _on_button_pressed():
	get_tree().change_scene_to_file("res://GameScenes/StoryFrames/StoryFrame3.tscn")
