# ProjetoX

Jogo 2D feito na Godot 4: pegue uma arma no mapa e enfrente o boss.

## Sobre o jogo

O jogador explora o mapa, encontra uma arma no chão e parte para enfrentar o boss final. O jogo terá dois mapas: a exploração é vista de cima e a luta contra o boss acontece em uma arena de plataforma.

## Funcionalidades

- Movimento do personagem em 4 direções (WASD) com animações
- Arma no chão que o jogador pega apertando E
- Ataque com a arma
- Luta contra o boss

Em andamento: dano e vida do boss, arena de plataforma e o segundo mapa.

## Como rodar

1. Instale a [Godot 4](https://godotengine.org/download)
2. Clone o repositório:

   ```
   git clone https://github.com/anisiojunior77/ProjetoX.git
   ```

3. Abra a Godot, clique em **Importar** e selecione o arquivo `project.godot`
4. Aperte **F5** para jogar

## Controles

| Tecla   | Ação        |
|---------|-------------|
| W A S D | Mover       |
| E       | Pegar arma  |
| Espaço  | Atacar      |

## Estrutura do projeto

- `assets/`: sprites e imagens
- `scenes/`: cenas do jogo (player, boss, mapas, armas, interface)
- `scripts/`: códigos em GDScript

## Tecnologias

Godot 4.7 · GDScript · Git e GitHub
