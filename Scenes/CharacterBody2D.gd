extends CharacterBody2D


func _physics_process(delta):
	if Input.is_action_pressed("up"):
		if position.y < 448:
			position.y = 384
			$AnimationPlayer.play("top")	
	elif Input.is_action_pressed("down"):
		position.y = position.y + 20
		$AnimationPlayer.play("RightSide")
	move_and_slide()

