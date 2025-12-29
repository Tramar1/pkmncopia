extends CharacterBody2D

var input_dir
var tile_size = 32
var moving = false

#pras portas funcionarem---------
func _ready():
	NavigationManager.on_player_spawn.connect(on_spawn)

func on_spawn(position:Vector2, direction: String):
	moving = false
	global_position = position
	#colcar animação depois
#--------------------------------
#movimentação--------------------
func _physics_process(delta: float) -> void:
	input_dir = Vector2.ZERO
	if Input.is_action_pressed("BaixoQWERTY"):
		if !$ray_baixo.is_colliding():
			input_dir = Vector2(0, 1)
			move()
	elif Input.is_action_pressed("CimaQWERTY"):
		if !$ray_cima.is_colliding():
			input_dir = Vector2(0, -1)
			move()
	elif Input.is_action_pressed("EsquerdaQWERTY"):
		if !$ray_esquerda.is_colliding():
			input_dir = Vector2(-1, 0)
			move()
	elif Input.is_action_pressed("DireitaQWERTY"):
		if !$ray_direita.is_colliding():
			input_dir = Vector2(1, 0)
			move()

func move():
	if input_dir:
		if moving == false:
			moving = true
			var tween = create_tween()
			tween.tween_property(self, "position", position + input_dir*tile_size, 0.35)
			tween.tween_callback(move_false)
			
func move_false():

	moving = false
#--------------------------------
