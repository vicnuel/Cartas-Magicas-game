extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	OS.shell_open("https://www.instagram.com/vic_lima.f.q/")


func _on_Button2_pressed():
	OS.shell_open("https://www.instagram.com/programando_o_cosmo/")


func _on_Button3_pressed():
	OS.shell_open("https://github.com/VictorEmanuelLima")


func _on_Button4_pressed():
	get_tree().change_scene("res://menu.tscn")
