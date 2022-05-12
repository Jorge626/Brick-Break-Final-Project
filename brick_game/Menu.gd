extends Control

func _ready():
	randomize()

func _on_Clone_pressed():
	get_tree().change_scene("res://CloneGame/CloneGame.tscn")


func _on_Variant_pressed():
	get_tree().change_scene("res://VariantGame/VariantGame.tscn")


func _on_Quit_pressed():
	get_tree().quit()
