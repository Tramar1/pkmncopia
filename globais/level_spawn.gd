extends Node2D

func _ready():
	if NavigationManager.spawn_teleporte_tag != null:
		on_level_spawn(NavigationManager.spawn_teleporte_tag)
		
func on_level_spawn(destination_tag: String):
	var teleporte_path = "portas/porta_" + destination_tag
	var teleporte = get_node(teleporte_path) as Teleporte
	NavigationManager.trigger_player_spawn(teleporte.spawn.global_position, teleporte.spawn_direction)
