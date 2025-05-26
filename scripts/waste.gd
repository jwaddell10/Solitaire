extends Node2D

#const BORDER_COLOR = Color(1, 1, 1, 0.5)  # White, semi-transparent
#const BORDER_SIZE = Vector2(140, 190)    # Size of a card
@onready var waste_pile_spot : Marker2D = $waste_pile_location
@onready var waste_card : Sprite2D = $waste_card

var waste = [];

func add_to_waste(card):
	waste.push_front(card)
	waste_card.display_card(card)
	
