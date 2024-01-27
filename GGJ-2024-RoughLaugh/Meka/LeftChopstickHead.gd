extends CharacterBody2D

var speed = 200

func _physics_process(delta):
	velocity.x = 0
	velocity.y = 0

	if Input.is_key_pressed(KEY_A):
		velocity.x -= 1
	if Input.is_key_pressed(KEY_D):
		velocity.x += 1
	if Input.is_key_pressed(KEY_W):
		velocity.y -= 1
	if Input.is_key_pressed(KEY_S):
		velocity.y += 1

	velocity = velocity.normalized() * speed


	move_and_slide()
