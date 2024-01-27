extends CharacterBody2D


var SPEED = 600  # Adjust the speed as needed

func _physics_process(delta):
	
	#var velocity = Vector2() # The character's movement vector.

	# Check for input and adjust the velocity accordingly.
	if Input.is_action_pressed("r_move_right"):
		velocity.x += 1000
	if Input.is_action_pressed("r_move_left"):
		velocity.x -= 1000
	if Input.is_action_pressed("r_move_down"):
		velocity.y += 1000
	if Input.is_action_pressed("r_move_up"):
		velocity.y -= 1000

	# Normalize the velocity to ensure consistent movement speed in all directions.
	velocity = velocity.normalized() * SPEED

	if Input.is_anything_pressed()==false:
		velocity = Vector2.ZERO

	# Move the character.
	move_and_slide()
