extends KinematicBody2D

var score : int = 0
var speed : int = 350
var vel : Vector2 = Vector2()
onready var sprite : Sprite = get_node("Paddle")

func _physics_process(delta):
	vel.x = 0
	
	if Input.is_action_pressed("move_left_arrow") or Input.is_action_pressed("move_left_a"):
		vel.x -= speed
	if Input.is_action_pressed("move_right_arrow") or Input.is_action_pressed("move_right_d"):
		vel.x += speed
	
	vel = move_and_slide(vel, Vector2.UP)
	
