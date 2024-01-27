extends Node2D


func _ready():
	pass

func _process(delta):
	pass

func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://GameScenes/StoryFrames/StoryFrame1.tscn")

