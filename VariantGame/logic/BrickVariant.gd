extends StaticBody2D

const SLOW_DOWN = preload("res://VariantGame/SlowDown.tscn")
const SPEED_UP = preload("res://VariantGame/SpeedUp.tscn")
const ADD_BALL = preload("res://VariantGame/AddBall.tscn")
var random = RandomNumberGenerator.new()

func brick_hit(): 
	"""
	random.randomize()
	var randNumber = random.randi_range(0, 10)
	print(randNumber)
	if randNumber < 100:
		print("PowerUp/Down!")
		randNumber = random.randi_range(0, 1)
		if randNumber == 0:
			print("PowerUp! :)")
			randNumber = random.randi_range(0, 1)
			if randNumber == 0:
				print("Slow down")
				var slow_down = SLOW_DOWN.instance()
				get_parent().add_child(slow_down)
			else:
				print("Add ball!")
				var add_ball = ADD_BALL.instance()
				get_parent().add_child(add_ball)
		else:
			print("PowerDown! :(")
			var speed_up = SPEED_UP.instance()
			get_parent().add_child(speed_up)
	"""
	get_parent().queue_free()
