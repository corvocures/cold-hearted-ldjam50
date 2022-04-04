extends RigidBody2D

onready var destroy_sound = $DestroySound

func _on_Hitbox_body_entered(body):
	if body.is_in_group("green_ball"):
		destroy_sound.play()
		body.queue_free()
		if Global.is_timer_started == false:
			Global._lose()
