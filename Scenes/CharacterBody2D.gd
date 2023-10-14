extends CharacterBody2D


func get_input():
	var input_direction = Input.get_vector("left","right","down","up")
	velocity = inp
func _physics_process(delta):
	var direction = Input.get_axis("up", "down")

	if direction > 0:
		position.y = direction + 30
		$AnimationPlayer.play("top")
		position.y = direction + 30
		$AnimationPlayer.play("RightSide")
	elif direction < 0:
		position.y = direction - 30
		$AnimationPlayer.play("bot")
		position.y = direction - 30
		$AnimationPlayer.play("RightSide")

	move_and_slide()
