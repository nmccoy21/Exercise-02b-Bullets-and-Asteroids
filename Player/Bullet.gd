extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocity = Vector2.ZERO
var speed = 500.0
var damage = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = Vector2(0,-speed).rotated(rotation)


func _physics_process(_delta):
	velocity = move_and_slide(velocity, Vector2.ZERO)
	position.x = wrapf(position.x, 0, 1024)
	position.y = wrapf(position.y, 0, 600)


func _on_Timer_timeout():
	queue_free()



func _on_Area2D_body_entered(body):
	queue_free()
	
	
