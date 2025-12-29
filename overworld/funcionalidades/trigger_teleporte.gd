extends Area2D

@export var telaSeguinte = ""

func _on_body_entered(body) -> void:
	if body is Player:
		NavigationManager.change_scene(body, telaSeguinte)
