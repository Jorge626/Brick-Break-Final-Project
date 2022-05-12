extends Node2D

const GRAVITY = 40
var velocity = Vector2.ZERO

func _ready():
	pass 

func _physics_process(delta):
	velocity.y = GRAVITY
	var collision = $SlowDown.move_and_collide(velocity * delta)


	
