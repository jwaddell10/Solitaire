extends Node2D

@onready var stock_pile = $Stock
@onready var tableau_pile = $Tableau

func _ready():
	#get the deck and shuffle it
	var deck = DeckBuilder.build_deck()
	deck.shuffle()

	#place 24 cards in stock_cards pile
	var stock_cards = deck.slice(0, 24)
	stock_pile.set_cards(stock_cards)

	#place remaining 28 cards in tableau_cards pile
	var tableau_cards = deck.slice(24)
	tableau_pile.set_cards(tableau_cards)
