extends KinematicBody2D

func speed_up_hit():
	print("Speed Up Power Obtained!")
	get_parent().queue_free()


func _on_Area2D_body_entered(body):
	pass # Replace with function body.
