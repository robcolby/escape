extends StaticBody2D

@export var door_id: String = ""
var is_open = false
var at_door = false

func _ready():
	$CollisionShape2D.disabled = false # Door starts as closed

func _on_door_body_entered(body):
	if body.name == "Player":
		at_door = true
		print("Player can trigger the door, ", door_id)

func _on_door_body_exited(body):
	if body.name == "Player":
		at_door = false
		print("Player cannot trigger the door, ", door_id)

func get_input():
	if Input.is_action_pressed("trigger_action") and at_door == true:
		is_open = !is_open
		$CollisionShape2D.disabled = is_open # Disable collision if door is open
		if $AnimatedSprite2D.frame == 0:
			$AnimatedSprite2D.set_frame (1)
		else:
			$AnimatedSprite2D.set_frame (0)

func _process(delta): 
	get_input()




