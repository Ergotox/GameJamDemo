extends CharacterBody2D

@export var speed = 300

@export var gravity = 30
@export var jump_force = 500

func _physics_process(delta):
	
	var horizontal_direction = Input.get_axis("left", "right")
	velocity.x = speed * horizontal_direction
	
	var vertical_direction = Input.get_axis("down", "up")
	velocity.y= -speed * vertical_direction
	
	if horizontal_direction > 0:
		$AnimationPlayer.play("walk_right")
	elif horizontal_direction < 0:
		$AnimationPlayer.play("walk_left")
	elif vertical_direction > 0:
		$AnimationPlayer.play("walk_up")
	elif vertical_direction <0:
		$AnimationPlayer.play("walk_down")
	else:
		$AnimationPlayer.play("iddle")
	
	move_and_slide()
