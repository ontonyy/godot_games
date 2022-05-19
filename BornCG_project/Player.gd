extends KinematicBody2D


var velocity = Vector2()
const SPEED = 400

func get_input():
	velocity.x = 0
	# look_at(get_global_mouse_position())
	if Input.is_action_pressed("right"):
		velocity.x += SPEED
	if Input.is_action_pressed("left"):
		velocity.x -= SPEED
	
	velocity.y += 30
	
	velocity = move_and_slide(velocity, Vector2.UP)
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y -= 1000

func _physics_process(delta):
	get_input()
