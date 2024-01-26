extends Node2D

var sushi = preload("res://Player/sushi.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timeout():
	
	var newSushi = sushi.instantiate();
