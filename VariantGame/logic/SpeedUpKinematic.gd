extends KinematicBody2D

func speed_up_hit():
	print("Speed Up Power Obtained!")
	get_parent().queue_free()
