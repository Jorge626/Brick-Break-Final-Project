extends StaticBody2D

func brick_hit():
	get_parent().queue_free()
