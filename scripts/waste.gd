extends Node2D

#const BORDER_COLOR = Color(1, 1, 1, 0.5)  # White, semi-transparent
#const BORDER_SIZE = Vector2(140, 190)    # Size of a card
@onready var waste_pile_spot : Marker2D = $waste_pile_location
@onready var waste_card : Sprite2D = $waste_card
var card_scene = preload("res://Card.tscn").instantiate()

var waste = [];
func add_to_waste(card):
	print(card_scene, 'waste card')
	waste.push_front(card)
	#waste_card.display_card(card)
	#display_waste_pile(waste)
	#card_scene.show_card(card)

#func display_waste_pile(waste):
	#card_scene.display_card(waste)
#func display_waste_pile(waste):
	#loop
	#highest index and perm display
	#for item in waste:
		#waste_card.display_card(item)
