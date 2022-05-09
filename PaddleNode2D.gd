extends Node2D

func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	var collision = $Paddle.move_and_collide(Vector2.ZERO)
	if collision:
		if(collision.collider.name=='AddBall'):
			collision.collider.add_ball_hit()
		elif(collision.collider.name=='SlowDown'):
			collision.collider.slow_down_hit()
		elif(collision.collider.name=='SpeedUp'):
			collision.collider.speed_up_hit()
