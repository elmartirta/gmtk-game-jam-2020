extends "res://World/Ants/Ants.gd"

var destination
var body

func _on_Detection_body_entered(body):
	found_food(body)

func found_food(body):
	destination = body.global_position
	set_charge_destination(destination)
	set_state_charge()
	print("Anthony found food!")
