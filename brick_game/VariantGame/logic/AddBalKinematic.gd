extends KinematicBody2D

func add_ball_hit():
	print("Add Ball Power Obtained!")
	get_parent().queue_free()
