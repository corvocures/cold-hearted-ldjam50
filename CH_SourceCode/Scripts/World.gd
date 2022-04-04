extends Node2D

onready var win_streak = $UI/WinStreak

func _input(event):
	if event.is_action_pressed("ui_accept"):
		OS.window_fullscreen = !OS.window_fullscreen
	if event.is_action_pressed("ui_cancel"):
		get_tree().quit()
	if event.is_action_pressed("reload"):
		Global.is_timer_started = false
		Global.win_streak = 0
		get_tree().reload_current_scene()

func _ready():
	Global.is_timer_started = false

func _process(_delta):
	win_streak.text = String(Global.win_streak)
