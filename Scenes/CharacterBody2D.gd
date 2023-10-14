extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	var direction = Input.get_axis("up", "down")
	if direction > 0:
		position.y = direction * 2
		$AnimationPlayer.play("RightSide")
	elif direction < 0:
		position.y = direction * -2
		$AnimationPlayer.play("RightSide")

	move_and_slide()
