extends Node2D

onready var SpawnedAnts : YSort = $"Spawned Ants";
onready var SpawnTimer : Timer = $"Spawn Timer";

var num_ants = 0

func _on_Spawn_Timer_timeout():
	spawn_ant()

func spawn_ant():
	num_ants += 1;
	var new_ant = load("res://World/Ants/Ants.tscn").instance();
	SpawnedAnts.add_child(new_ant)
