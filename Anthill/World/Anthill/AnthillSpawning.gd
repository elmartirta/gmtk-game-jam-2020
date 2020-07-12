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

	var new_ant_number = rand_range(0,20);
	var new_ant_path = "";

	match new_ant_number:
		20: continue
		19: continue
		18: continue
		17: continue
		16: continue
		15: continue
		14: continue
		13: continue
		12: continue
		11: continue
		10: continue
		9: continue
		8: continue
		7: new_ant_path = dummy_ant_path
		6: continue
		5: continue
		4: new_ant_path = scout_ant_path
		3: continue
		2: continue
		1: continue
		0: new_ant_path = soldier_ant_path
		_: new_ant_path = generic_ant_path



	var new_ant = load(new_ant_path).instance();
	SpawnedAnts.add_child(new_ant)
