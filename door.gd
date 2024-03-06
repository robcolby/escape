extends Area2D

@export var closed_texture: Texture
@export var open_texture: Texture
var is_open = false

# Reference to the Sprite and CollisionShape2D nodes
@onready var sprite = $Sprite
@onready var collision_shape = $CollisionShape2D

# Called when the node enters the scene tree for the first time.
func _ready():
	sprite.texture = closed_texture
	collision_shape.disabled = false # Door starts as closed

func _on_Door_body_entered(body):
	if body.name == "Player":
		print("Player can open the door")

func _on_Door_body_exited(body):
	if body.name == "Player":
		print("Player left the door")

func _input(event):
	if event.is_action_pressed("ui_accept") and is_inside_tree():
		toggle_door()

func toggle_door():
	is_open = !is_open
	sprite.texture = open_texture if is_open else closed_texture
	collision_shape.disabled = is_open # Disable collision if door is open

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta): 
#	pass
