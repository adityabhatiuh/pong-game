extends Control
signal start
signal gui
# Called when the node enters the scene tree for the first time.
func _ready():
	G.connect("w",u) 


	
func u():
	$Label2.text = str(G.p1_s)
	$Label.text =str(G.p2_s)

	
