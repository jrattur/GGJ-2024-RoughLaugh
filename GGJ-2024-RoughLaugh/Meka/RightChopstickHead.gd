extends Sprite2D


var speed = 200  # Adjust the speed as needed
var velocity = Vector2()

func _physics_process(delta):
	velocity.x = 0
	velocity.y = 0

	if Input.is_key_pressed(KEY_LEFT):
		velocity.x -= 1
	if Input.is_key_pressed(KEY_RIGHT):
		velocity.x += 1
	if Input.is_key_pressed(KEY_UP):
		velocity.y -= 1
	if Input.is_key_pressed(KEY_DOWN):
		velocity.y += 1

	velocity = velocity.normalized() * speed
	
	move_and_slide()
