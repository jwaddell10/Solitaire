extends Node2D

@onready var waste_pile = $Waste_Pile
@onready var waste_pile_location : Marker2D = $Waste_Pile/waste_pile_location
@export var game_spaces : Array[Node]
var card_scene = preload("res://Card.tscn").instantiate()
var stock_pile = []

func set_stock(new_cards):
	stock_pile = new_cards

func add_card_to_waste_pile(card):
	waste_pile.add_to_waste(card)
	card_scene.show_card(card)
	card_scene.position = Vector2(-50, 0)
	var tween = create_tween()
	tween.tween_property(card_scene, "position", waste_pile_location.position, 0.2)

func draw_card() -> void:
	if stock_pile.is_empty():
		set_stock(waste_pile.waste)
	else:
		var card_to_add_to_waste_pile = stock_pile.pop_back()
		add_card_to_waste_pile(card_to_add_to_waste_pile)
