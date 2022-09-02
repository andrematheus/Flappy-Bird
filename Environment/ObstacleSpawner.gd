extends Node2D

onready var timer = $Timer

var Obstacle = preload("res://Environment/Obstacle.tscn")

func _ready():
	randomize()

func _on_Timer_timeout():
	spawn_obstacle()


func spawn_obstacle():
	var obstacle = Obstacle.instance()
	add_child(obstacle)
	obstacle.position.y = randi() % 400 + 150


func start():
	timer.start()
	
	
func stop():
	timer.stop()