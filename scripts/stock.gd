extends Node2D

@onready var waste_pile = $Waste_Pile
@onready var waste_pile_location : Marker2D = $Waste_Pile/waste_pile_location
@export var game_spaces : Array[Node]
@onready var texture : Sprite2D = $Waste_Pile/waste_card
#var place : int = 1
var cards = []

func set_cards(new_cards):
	cards = new_cards
#hold cards, remove when button is tapped to draw cards
#move them to waste pile

func _on_button_pressed() -> void:
	var card_to_add_to_waste_pile = cards.pop_back()
	var rank = card_to_add_to_waste_pile.rank
	var suit = card_to_add_to_waste_pile.suit
	var card_name = "res://card_assets/{rank}_of_{suit}.png".format({"rank": rank, "suit": suit})
	var path = card_name.to_lower()
	texture.display_card(card_to_add_to_waste_pile)
	texture.position = Vector2(-50, 0)
	var tween = create_tween()
	tween.tween_property(texture, "position", waste_pile_location.position, 0.2)
	#var waste_pile = waste_pile.add_to_waste(card_to_add_to_waste_pile)
