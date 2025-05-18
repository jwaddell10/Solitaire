extends Node2D

const BORDER_COLOR = Color(1, 1, 1, 0.5)  # White, semi-transparent
const BORDER_SIZE = Vector2(140, 190)    # Size of a card

func _draw():
	draw_rect(Rect2(Vector2(150, 10), BORDER_SIZE), BORDER_COLOR, false, 2.0)
