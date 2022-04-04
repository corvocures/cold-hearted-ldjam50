extends Area2D

func _on_Kill_Zone_area_entered(area):
	if area.is_in_group("heart"):
		if Global.is_timer_started == false:
			Global._lose()
	if area.is_in_group("green_ball"):
		if Global.is_timer_started == false:
			Global._lose()
	if area.is_in_group("grey_ball"):
		if Global.is_timer_started == false:
			Global._win()
	if area.is_in_group("platform"):
		area.queue_free()
