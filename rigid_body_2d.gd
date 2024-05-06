extends CharacterBody2D

var speed: =  450
var vlocity: = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	
	randomize()
	velocity.x = [-1,1][randi()%2]
	velocity.y = [-0.8,0.8][randi()%2]

func _physics_process(delta):
	var c = move_and_collide(velocity*speed*delta)
	if c:
		velocity = velocity.bounce(c.get_normal())
		$"../AudioStreamPlayer".play()

func _on_game_c():
	queue_free()
	
func stop_ball(c :bool):
	if c == true:
		speed = 0
	else:
		speed = 450
		
	 # Replace with function body.

func _on_control_start():
	stop_ball(false) # Replace with function body.

# Replace with function body.
