extends CharacterBody3D

@export var mouse_sensitvity = 0.3

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		rotation_degrees.y -= event.relative.x * mouse_sensitvity
		%Camera3D.rotation_degrees.x -= event.relative.y * mouse_sensitvity
		%Camera3D.rotation_degrees.x = clamp(
			%Camera3D.rotation_degrees.x, -90.0, 90.0
		)
