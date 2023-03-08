extends CharacterBody2D

@export var speed = 950
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = transform.x * Input.get_axis("left", "right") * speed
	#velocity = transform.y * Input.get_axis("up", "down") * speed

func _physics_process(delta):
	get_input()
	move_and_slide()
