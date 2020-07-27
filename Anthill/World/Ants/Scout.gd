extends "res://World/Ants/Ants.gd"


func _on_Detection_body_entered(body):
	set_state_charge()
	print("Anthony found food!")
