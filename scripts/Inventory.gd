extends Node

## a singleton script to help manage inventory.
## to use it in another script (e.g. player or toilet), follow below:
#var inventory = InventoryManager.INSTANCE
## To access members:
#print(inventory.items)  # Assuming "items" is a member variable
## To call functions:
#inventory.add_item("health_potion", 2)

#static var INSTANCE : InventoryManager # - BUG - can't find INSTANCE from script. Will trying passing code instead

#var item_data = {}
var item_data

func _ready():
	#INSTANCE = self  # Assign the instance - BUG - can't find instance. will try passing code instead.
	set_process(false)  # Disable processing (optional)

#func load_data (data):
	#var file_path 
	#item_data = load("res://resources/goldkey.tres")

func is_discovered(InventoryFile):
	item_data = load(InventoryFile)
	if item_data != null :
		## 
		#item_data["name"] = file_data.get_name() # Access a property 
		return (item_data.isDiscovered)
	else : return null
	
func found_item(InventoryFile):
	item_data = load(InventoryFile)
	item_data.isDiscovered = true
	
	
	
## some example functions below

#func get_item(id):
#	pass

#func add_item(name, quantity):
#	if items.has_key(name):
#		items[name] += quantity
#	else:
#		items[name] = quantity

#func remove_item(name, quantity):
#	if items.has_key(name):
#		items[name] -= quantity
#		if items[name] <= 0:
#			items.erase(name)

#func get_item_quantity(name):
#	if items.has_key(name):
#		return items[name]
#	else:
#		return 0
