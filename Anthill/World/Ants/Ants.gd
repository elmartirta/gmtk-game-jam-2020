extends KinematicBody2D

export var SPEED = 10
export var MIN_TIME = 1
export var MAX_TIME = 5

enum{
	WANDER,
	CHARGE,
	RETURN
}

onready var timer = $Timer

var state = WANDER

onready var hill_position = get_parent().global_position
var charge_destination = Vector2.ZERO

var velocity = Vector2.ZERO
var direction = Vector2.ZERO

func _ready():
	print(hill_position)
	set_state_wander()

func _physics_process(delta):

	match state:
		WANDER:
			pass
		CHARGE:
			pass
		RETURN:
			pass




	velocity = direction * SPEED * delta
	velocity = move_and_collide(velocity)

func set_state_wander():
	state = WANDER
	choose_direction()

func set_state_charge():
	state = CHARGE
	timer.stop()

func set_charge_destination(destination):
	charge_destination = destination

func set_state_return():
	pass

func choose_direction():
	direction.x = rand_range(-1, 1)
	direction.y = rand_range(-1, 1)
	direction = direction.normalized()
	var chooseTime = rand_range(MIN_TIME, MAX_TIME)
	timer.start(chooseTime)

func _on_Timer_timeout():
	choose_direction()

