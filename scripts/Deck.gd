extends Node2D

@onready var stock_pile = $Stock
@onready var tableau_pile = $Tableau

var cards = [];

func set_cards(new_cards):
	cards = new_cards
	#place 24 cards in stock_cards pile
	var stock_cards = cards.slice(0, 24)
	stock_pile.set_cards(stock_cards)

	#place remaining 28 cards in tableau_cards pile
	var tableau_cards = cards.slice(24)
	tableau_pile.set_cards(tableau_cards)
