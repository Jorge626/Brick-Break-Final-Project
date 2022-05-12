extends Node2D


var random = RandomNumberGenerator.new()
var SpeedPU= preload("res://VariantGame/SpeedUp.tscn")
var SlowPU= preload("res://VariantGame/SlowDown.tscn")
var BallPU= preload("res://VariantGame/AddBall.tscn")
var Ball = preload("res://VariantGame/BallVariantSpawn.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_SpawnTimer_timeout():
	random.randomize()
	var randNumber = random.randi_range(0, 10)
	print(randNumber)
	if randNumber < 3:
		var speedPU = SpeedPU.instance()
		add_child(speedPU)
		speedPU.position = $Spawn.position
	elif randNumber >= 3 && randNumber <7:
		var ballPU = Ball.instance()
		add_child(ballPU)
		ballPU.position = $Spawn.position
	else:
		var slowPU = SlowPU.instance()
		add_child(slowPU)
		slowPU.position = $Spawn.position
		
