extends Area2D

@export var telaSeguinte = ""

func _on_body_entered(body) -> void:
	if body.is_in_group("player"):
		get_tree().change_scene_to_file(telaSeguinte)
