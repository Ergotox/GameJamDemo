extends CharacterBody2D

@export var speed = 300

@export var gravity = 30
@export var jump_force = 500

func _physics_process(delta):
	#si el juego es plataformero 2d
	#aqui defino la gravedad
	#if !is_on_floor():
	#	velocity.y += gravity
	#	if velocity.y > 1000:
	#		velocity.y = 1000
	
	#ahora defino el salto del jugador 
	#if Input.is_action_just_pressed("jump"):
	#	velocity.y = -jump_force
	
	
	var horizontal_direction = Input.get_axis("left", "right")
	velocity.x = speed * horizontal_direction
	
	var vertical_direction = Input.get_axis("down","up")
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
