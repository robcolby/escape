extends StaticBody2D

@export var toilet_id: String = ""

func _ready():
	pass

func _on_area_2d_body_entered(body):
	if body.name == "Player":
		print ("Do you have to pee?")
		print (body.position)
		
		#TESTING having key show up
		if toilet_id == "2" and InventoryManager.is_discovered("res://resources/goldkey.tres") == false :
			print ("You have found a golden key!!")
			InventoryManager.found_item("res://resources/goldkey.tres")
		
		## WORKS:
		##var goldkey_status = InventoryManager.is_discovered("res://resources/goldkey.tres")
		
		## using a scene
		#var item_resource = preload("res://scenes/hall_key.tscn")
		#item_resource.position = body.position # set the position to be where player is.
		#get_tree().current_scene.add_child(item_resource) # Finally, add this node to the scene tree
		
		## using tres directly - THIS ONE WORKED
		#var item_resource = preload("res://resources/goldkey.tres")
		#var item_representation = Sprite2D.new() # Create a Sprite (can use another node) to represent this item in the world
		#item_representation.texture = item_resource.texture
		#item_representation.position = body.position # set the position to be where player is.
		#get_tree().current_scene.add_child(item_representation) # Finally, add this node to the scene tree

	
func _on_area_2d_body_exited(body):
	pass 

func _process(delta):
	pass

