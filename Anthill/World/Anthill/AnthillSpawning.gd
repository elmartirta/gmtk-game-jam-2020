extends Node2D

onready var SpawnedAnts : YSort = $"Spawned Ants";
onready var SpawnTimer : Timer = $"Spawn Timer";

var generic_ant_path = "res://World/Ants/Ants.tscn"
var scout_ant_path = "res://World/Ants/Scout.tscn"
var hauler_ant_path = "res://World/Ants/Hauler.tscn"
var dummy_ant_path = "res://World/Ants/Dummy.tscn"
var soldier_ant_path = "res://World/Ants/Soldier.tscn"


var num_ants = 0

func _on_Spawn_Timer_timeout():
	spawn_ant()

func spawn_ant():
	num_ants += 1;

	var new_ant_number = round(rand_range(0,20));
	var new_ant_path = "";

	print(new_ant_number)

	if(new_ant_number >= 10): new_ant_path = dummy_ant_path
	elif (new_ant_number >= 7): new_ant_path = hauler_ant_path
	elif (new_ant_number >= 4): new_ant_path = scout_ant_path
	elif (new_ant_number >= 1): new_ant_path = soldier_ant_path
	else: new_ant_path = generic_ant_path

	var new_ant = load(new_ant_path).instance();
	SpawnedAnts.add_child(new_ant)
