extends StaticBody2D

@export var toilet_id: String = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_toilet_body_entered(body):
	print ("Do you have to pee?")
	
func _on_area_2d_body_exited(body):
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass






