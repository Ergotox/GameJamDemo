extends AudioStreamPlayer2D

@export var bpm := 100
@export var measures: = 4

#trackeando el beat y posicion de la cancion
var song_position = 0.0
var song_position_in_beats = 1
var sec_per_beat = 60.0/bpm
var last_reported_beat = 0
var beats_before_start = 0
var measure = 1

# determinando cuan cerca está el beat y el evento
var closest = 0
var time_off_beat = 0.0


# Called when the node enters the scene tree for the first time.
func _ready():
	sec_per_beat = 60.0 / bpm
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if playing:
	
