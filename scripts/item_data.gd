class_name ItemData
extends Resource


enum Type {HEAD, CHEST, LEGS, FEET, WEAPON, ACCESSORY, MAIN}

@export var type: Type
@export var name: String
@export_multiline var description: String
@export var texture: Texture2D
@export var location: Vector2
@export var inInventory: bool
@export var isDiscovered: bool
