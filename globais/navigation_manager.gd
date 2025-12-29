extends Node

var spawn_teleporte_tag
var spawn_position: Vector2
var spawn_direction: String
signal on_player_spawn

#testes
const scene_teste = preload("res://overworld/telas_teste/teste_grid_movement.tscn")
const scene_casateste = preload("res://overworld/telas_teste/teste_trocar_cena.tscn")

func go_to_level(level_tag, destination_tag):
	var scene_to_load
	
	match level_tag:
		"teste":
			scene_to_load = scene_teste
		"casateste":
			scene_to_load = scene_casateste
		
	if scene_to_load != null:
		spawn_teleporte_tag = destination_tag
		get_tree().change_scene_to_packed(scene_to_load)
		
func trigger_player_spawn(position:Vector2, direction:String):
	spawn_position = position
	spawn_direction = direction
	on_player_spawn.emit(position, direction)
