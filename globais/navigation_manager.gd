extends Node

class_name SceneManager
var player: Player
#mudar quando fizer playground real
var scenes = "res://overworld/telas_teste/"

func change_scene(from: Player, to_scene_name:String)-> void:
	player = from
	player.get_parent().remove_child(player)

	var caminho = scenes + to_scene_name + ".tscn"	
	get_tree().change_scene_to_file(caminho)
