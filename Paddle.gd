extends KinematicBody2D

var score : int = 0
var speed : int = 350
var velocity : Vector2 = Vector2()
onready var sprite : Sprite = get_node("Paddle")

func _physics_process(delta):
	velocity.x = 0
	
	if Input.is_action_pressed("move_left"):
		velocity.x -= speed
	if Input.is_action_pressed("move_right"):
		velocity.x += speed
	
	velocity = move_and_slide(velocity, Vector2.UP)
