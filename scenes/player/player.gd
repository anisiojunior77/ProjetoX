extends CharacterBody2D

const SPEED = 200.0
var health = 100

func _ready():
	add_to_group("player")

func _physics_process(delta):
	var direcao = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direcao * SPEED
	move_and_slide()

func take_damage(valor):
	health -= valor
	print("Vida do jogador: ", health)
