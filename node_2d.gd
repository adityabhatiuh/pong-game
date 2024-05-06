extends Node

signal c
signal t
var ball_s: PackedScene = preload("res://rigid_body_2d.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.



@warning_ignore("unused_parameter")
func _on_area_2d_body_entered(body):
	var balls = ball_s.instantiate()
	balls.stop_ball(false)
	balls.position = $Marker2D.global_position
	add_child(balls)
	c.emit()
	G.p1_s +=1
	$AudioStreamPlayer.play()
	t.emit()

func _on_area_2d_2_body_entered(_body):
	var balls = ball_s.instantiate()
	balls.stop_ball(false)
	
	balls.position = $Marker2D.global_position
	add_child(balls)
	c.emit()
	G.p2_s +=1
# Replace with function body.
	$AudioStreamPlayer.play()
	t.emit()
