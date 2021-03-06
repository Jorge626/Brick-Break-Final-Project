extends Node2D

var direction : Vector2 = Vector2()

func _ready():
	direction = Vector2(200,200)
	
func _physics_process(delta):
	var collision = $Ball.move_and_collide(direction * delta)
	if collision:
		var reflect = collision.remainder.bounce(collision.normal)
		direction = direction.bounce(collision.normal)
		$Ball.move_and_collide(reflect)
		if(collision.collider.name=='Brick'):
			collision.collider.brick_hit()
			$AudioBrickHit.play()
		if(collision.collider.name=='UnbreakableBrick'):
			$AudioBrickUnbreakable.play()
		if(collision.collider.name=='Paddle'):
			$AudioPaddle.play()
		if(collision.collider.name=='Roof'):
			$AudioPaddle.play()
		if(collision.collider.name=='rightWall'):
			$AudioPaddle.play()
		if(collision.collider.name=='leftWall'):
			$AudioPaddle.play()						

func _on_VisibilityNotifier2D_screen_exited():
	get_tree().reload_current_scene() # Replace with function body.
