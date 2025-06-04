extends Node2D

@onready var card_sprite : Sprite2D = $CardSprite

func show_card(card_data: Dictionary, position) -> void:
	card_sprite.display_card(card_data, position)
