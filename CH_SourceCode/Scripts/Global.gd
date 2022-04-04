extends Node

var win_streak = 0
var is_timer_started = false

func instance_node(node, location, parent):
	var node_instance = node.instance()
	parent.add_child(node_instance)
	node_instance.position = location
	return node_instance

func _win():
	is_timer_started = true
	yield(get_tree().create_timer(3), "timeout")
	win_streak += 1
	get_tree().reload_current_scene()

func _lose():
	is_timer_started = true
	yield(get_tree().create_timer(3), "timeout")
	win_streak -= 1
	get_tree().reload_current_scene()
