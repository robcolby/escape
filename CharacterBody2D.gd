extends CharacterBody2D

@export var speed = 200 # how fast the player will move (pixels / second )
var screen_size # size of the game window

func _ready():
	screen_size = get_viewport_rect().size
	
func get_input():
	velocity.x = 0
	velocity.y = 0
	
	# Identifying keys, will normalize and multiply by speed later
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
	
	# Turning on or off animation
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()
	
	# Selecting which animation to play
	if velocity.x > 0:
		$AnimatedSprite2D.animation = "right"
	elif velocity.x < 0:
		$AnimatedSprite2D.animation = "left"
	
	
func _physics_process(delta):
	get_input()
	move_and_slide()
	
