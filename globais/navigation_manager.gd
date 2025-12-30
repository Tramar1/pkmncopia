extends Node
#varaiveis pra usar as variaveis de teleporte
var telaSeguinte
var ativarPos = false
var posPlayer: Vector2

func mudar_cena(telaSeguinte, posPlayer):
	#dando os valores pras variaveis daqui
	self.telaSeguinte = telaSeguinte
	ativarPos = true
	self.posPlayer = posPlayer
	#mudando a cena
	get_tree().call_deferred("change_scene_to_file", telaSeguinte)
