extends KinematicBody2D

const TYPE = "Paddle"

var score : int = 0
var speed : int = 350
var velocity : Vector2 = Vector2()
onready var sprite : Sprite = get_node("Paddle")


"""func _physics_process(delta):
	velocity.x = 0
	
	if Input.is_action_pressed("move_left"):
		velocity.x -= speed
	if Input.is_action_pressed("move_right"):
		velocity.x += speed
	
	velocity = move_and_slide(velocity, Vector2.UP)"""
func _process(delta):
	get_controls()

func _physics_process(delta):
	move_and_collide(velocity * delta)

func get_controls():
		if (Input.is_key_pressed(KEY_LEFT)):
			velocity.x = -1
		elif (Input.is_key_pressed(KEY_RIGHT)):
			velocity.x = 1
		else:
			velocity.x = 0
		velocity = velocity.normalized() * speed
