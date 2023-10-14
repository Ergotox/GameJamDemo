extends CharacterBody2D

@export var velocidad = 10


func _ready():
	$AnimatedSprite2D.play("notasAnim")

func _process(delta):
	global_position.x += velocidad * delta


func _on_visible_on_screen_enabler_2d_screen_exited():
	queue_free()
