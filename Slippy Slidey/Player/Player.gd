extends RigidBody2D

const ACCELERATION = 10
const JUMP_STRENGTH = 600

func _process(_delta):
	var ui_horz = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	var ui_vert = Input.get_action_strength("ui_bottom") - Input.get_action_strength("ui_top")
	var ui_vec = Vector2(ui_horz, ui_vert)

	var input_force = Vector2()
	input_force += run_force(ui_vec)
	input_force += jump_force(ui_vec)
	self.apply_central_impulse(input_force);


func run_force(ui_vec):
	return Vector2(ui_vec.x * ACCELERATION, 0)

func jump_force(ui_vec):
	var jump_force = Vector2(0,0)
	if Input.is_action_just_pressed("ui_up"):
		jump_force = Vector2(0,-JUMP_STRENGTH);
	return jump_force
