extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const ROTATION_SPEED = 1
var SPEED = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x += SPEED
	
	if position.x >= 1000:
		SPEED -= 1
	if position.x <=0:
		SPEED += 1
		
