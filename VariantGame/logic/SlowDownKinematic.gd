extends KinematicBody2D

func slow_down_hit():
	print("Slow Debuff!")
	get_parent().queue_free()
