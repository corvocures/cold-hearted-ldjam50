extends RigidBody2D

export var speed = 50
onready var destroy_sound = $DestroySound

func _physics_process(_delta):
	var velocity_y = get_linear_velocity().y
	var velocity_x = get_linear_velocity().x
	if Input.is_action_pressed("ui_left"):
		set_linear_velocity(Vector2(- speed, velocity_y))
	elif Input.is_action_pressed("ui_right"):
		set_linear_velocity(Vector2(+ speed, velocity_y))
	else:
		set_linear_velocity(Vector2(velocity_x, velocity_y))
