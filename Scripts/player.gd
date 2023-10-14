extends CharacterBody2D

@export var speed = 300

@export var gravity = 30
@export var jump_force = 500

var score = 0
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





func _on_collect_zone_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	score += 10
	print(score)
