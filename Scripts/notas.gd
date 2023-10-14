extends CharacterBody2D

@export var velocidad = 200



const RAY_FINISH_TARGET_POSITION_x = 20

func _ready():
	$AnimatedSprite2D.play("notasAnim")

func _process(delta):
	
	if not $RayCast2D.is_colliding():
		velocity.x = velocidad * -1
	else:
		hide()
		
		
	move_and_slide()



func _on_collect_zone_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	hide()
