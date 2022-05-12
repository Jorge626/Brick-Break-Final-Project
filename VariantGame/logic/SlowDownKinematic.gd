extends KinematicBody2D

func slow_down_hit():
	print("Slow Down Power Obtained!")
	get_parent().queue_free()
