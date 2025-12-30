extends Area2D

@export var telaSeguinte = "caminho da tela"

func _on_body_entered(body) -> void:
	if body is Player:
		NavigationManager.mudar_cena(telaSeguinte)
