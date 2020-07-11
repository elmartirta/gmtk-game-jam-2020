extends KinematicBody2D

export var SPEED = 10
export var MIN_TIME = 1
export var MAX_TIME = 5

onready var timer = $Timer

var velocity = Vector2.ZERO
var direction = Vector2.ZERO

func _ready():
	choose_direction()

func _physics_process(delta):
	velocity = direction * SPEED * delta
	velocity = move_and_collide(velocity)

func choose_direction():
	direction.x = rand_range(-1, 1)
	direction.y = rand_range(-1, 1)
	direction = direction.normalized()
	var chooseTime = rand_range(MIN_TIME, MAX_TIME)
	timer.start(chooseTime)

func _on_Timer_timeout():
	choose_direction()
