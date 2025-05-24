extends Node2D

@onready var waste_pile = get_parent().get_node("Waste")

var cards = []

func set_cards(new_cards):
	cards = new_cards

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("flip_card"):
		print('click happened')

		if cards.size() > 0:
			var cardToRemove = cards.pop_back()
			waste_pile.add_to_waste(cardToRemove)
			print("Card flipped and moved to waste.")
		else:
			print("No cards	 left to flip.")


#func _input(event):
	#if event.is_action_pressed("flip_card"):
		#print('click happened')
		##remove top card, flip it over
		#var cardToRemove = cards.pop_back()
		#waste_pile.add_to_waste(cardToRemove)
#hold cards, remove when button is tapped to draw cards
#move them to waste pile
