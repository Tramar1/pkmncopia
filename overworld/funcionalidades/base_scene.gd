extends Node
class_name BaseScene

@onready var player: Player = $Player
@onready var entrance_markers: Node2D = $EntranceMarkers

func _ready():
	if NavigationManager.player:
		if player:
			player.queue_free()
		player = NavigationManager.player
		add_child(player)
		await get_tree().process_frame
		position_player(player)
func position_player(player:Player)-> void:
	for entrance in entrance_markers.get_children():
		if entrance is Marker2D and entrance.name == "casa1_interior":
			player.global_position = entrance.global_position
