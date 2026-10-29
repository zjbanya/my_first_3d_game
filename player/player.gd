extends CharacterBody3D

@export var mouse_sensitvity = 0.5

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		rotation_degrees.y -= event.relative.x * mouse_sensitvity
		
		
		
	
	
