extends KinematicBody2D

var score : int = 0
var speed : int = 200
var vel : Vector2 = Vector2()
onready var sprite : Sprite = get_node("Paddle")

func _physics_process(delta):
	vel.x = 0
	
	if Input.is_action_pressed("move_left"):
		vel.x -= speed
	if Input.is_action_pressed("move_right"):
		vel.x += speed
	
	vel = move_and_slide(vel, Vector2.UP)
	
