extends Node2D

var card_scene = preload("res://scenes/Card.tscn")
@onready var waste_pile = $Waste_Pile
@export var game_spaces : Array[Node]
var stock_pile = []

func set_stock(new_cards):
	stock_pile = new_cards

func add_card_to_waste_pile(card):
	var card_instance = card_scene.instantiate()
	add_child(card_instance)
	waste_pile.add_to_waste(card)
	card_instance.show_card(card, game_spaces[1].position)

func draw_card() -> void:
	if stock_pile.is_empty():
		set_stock(waste_pile.waste)
	else:
		var card_to_add_to_waste_pile = stock_pile.pop_back()
		add_card_to_waste_pile(card_to_add_to_waste_pile)
