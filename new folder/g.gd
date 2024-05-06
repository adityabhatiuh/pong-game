extends Node

signal w

var p1_s :int = 0:
	set(value):
		p1_s = value
		print(p1_s)
		w.emit()

var p2_s :int = 0:
	set(value):
		p2_s = value
		print(p2_s)
		w.emit()
