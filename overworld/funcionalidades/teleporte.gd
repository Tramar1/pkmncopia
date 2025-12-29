extends Area2D

class_name Teleporte
@export var spawn_direction: String #spawn_direction
@export var tagTeleporte: String #destination_door_tag
@export var telaSeguinte: String #destination_level_tag
@onready var spawn = $spawn

func _on_body_entered(body) -> void:
	if body.is_in_group("player"):
		NavigationManager.go_to_level(telaSeguinte, tagTeleporte)
