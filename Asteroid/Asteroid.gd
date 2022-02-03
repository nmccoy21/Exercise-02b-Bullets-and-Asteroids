extends KinematicBody2D


var velocity = Vector2.ZERO

var initial_speed = 3.0

func _ready():
	velocity = Vector2(0,randf()*initial_speed).rotated(randf()*2*PI)
	pass
func _physics_process(_delta):
	position = position + velocity
	velocity.x = wrapf(velocity.x, 0, 1024)
	velocity.y = wrapf(velocity.y, 0, 600)
