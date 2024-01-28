extends Node2D

var playIdle: Sprite2D
var playOnHover: Sprite2D
var playOnPressed: Sprite2D
var aboutIdle: Sprite2D
var aboutOnHover: Sprite2D
var aboutOnPressed: Sprite2D
var aboutPage: ColorRect

func _ready():
	playIdle = $PlayButton/PlayIdle
	playOnHover = $PlayButton/PlayOnHover
	playOnPressed = $PlayButton/PlayOnPressed
	aboutIdle = $AboutButton/AboutIdle
	aboutOnHover = $AboutButton/AboutOnHover
	aboutOnPressed = $AboutButton/AboutOnPressed
	aboutPage = $AboutPage
	playIdle.visible = true
	playOnHover.visible = false
	playOnPressed.visible = false
	aboutIdle.visible = true
	aboutOnHover.visible = false
	aboutOnPressed.visible = false
	aboutPage.visible = false

func _process(delta):
	pass

func _on_play_button_button_up():
	get_tree().change_scene_to_file("res://GameScenes/StoryFrames/StoryFrame1.tscn")


func _on_play_button_mouse_entered():
	playIdle.visible = false
	playOnHover.visible = true
	playOnPressed.visible = false


func _on_play_button_mouse_exited():
	playIdle.visible = true
	playOnHover.visible = false
	playOnPressed.visible = false


func _on_play_button_button_down():
	playIdle.visible = false
	playOnHover.visible = false
	playOnPressed.visible = true


func _on_about_button_button_down():
	aboutIdle.visible = false
	aboutOnHover.visible = false
	aboutOnPressed.visible = true


func _on_about_button_button_up():
	aboutPage.visible = true


func _on_about_button_mouse_entered():
	aboutIdle.visible = false
	aboutOnHover.visible = true
	aboutOnPressed.visible = false


func _on_about_button_mouse_exited():
	aboutIdle.visible = true
	aboutOnHover.visible = false
	aboutOnPressed.visible = false


func _on_go_back_button_pressed():
	aboutPage.visible = false
