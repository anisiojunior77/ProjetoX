extends CharacterBody2D

var tem_arma = false
const SPEED = 200.0
var health = 100
var ultima_direcao = "down"

@onready var anim = $AnimatedSprite2D

func _ready():
	add_to_group("player")

func _physics_process(_delta):
	var direcao = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direcao * SPEED
	move_and_slide()
	atualizar_animacao(direcao)

func atualizar_animacao(direcao):
	if direcao == Vector2.ZERO:
		anim.stop()
		anim.frame = 0
		return
	if abs(direcao.x) > abs(direcao.y):
		ultima_direcao = "right" if direcao.x > 0 else "left"
	else:
		ultima_direcao = "down" if direcao.y > 0 else "up"
	anim.play(ultima_direcao)

func take_damage(valor):
	health -= valor
	print("Vida do jogador: ", health)
	
func pegar_arma():
		tem_arma = true
		print("Peguei a arma!")

func _input(event):
	if event.is_action_pressed("attack") and tem_arma:
		print("Ataque!")
	
