extends Area2D

var player_perto = null

func _ready():
	print("Arma pronta")
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)

func _on_body_entered(body):
	print("Entrou alguém: ", body.name)
	if body.is_in_group("player"):
		player_perto = body
		print("É o player!")

func _on_body_exited(body):
	if body == player_perto:
		player_perto = null

func _process(_delta):
	if player_perto and Input.is_action_just_pressed("interact"):
		print("Apertou E")
		player_perto.pegar_arma()
		queue_free()
