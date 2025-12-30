extends Node
#varaiveis pra usar as variaveis de teleporte
var telaSeguinte

func mudar_cena(telaSeguinte):
	#dando os valores pras variaveis daqui
	telaSeguinte = telaSeguinte
	#mudando a cena
	get_tree().change_scene_to_file(telaSeguinte)
