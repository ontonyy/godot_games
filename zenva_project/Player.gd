extends KinematicBody2D

var score := 0
var speed := 400
var jump : int = 600
var grafity : int = 800

var vel : Vector2 = Vector2()

onready var sprite : Sprite = get_node("Player")

func _physics_process(delta):
	vel.x = 0
	
	# movement inputs controlling
	if Input.is_action_pressed("move_left"):
		vel.x -= speed
	if Input.is_action_pressed("move_right"):
		vel.x += speed
	if Input.is_action_pressed("move_down"):
		vel.y += 50
	
	# applying the velocity
	vel = move_and_slide(vel, Vector2.UP)
	
	vel.y += grafity * delta
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		vel.y -= jump
	
	if vel.x < 0:
		sprite.flip_h = true
	else:
		sprite.flip_h = false
		




