extends Node2D

@onready var stock_pile = $Deck/Stock
@onready var tableau_pile = $Tableau

func _ready():
	var deck = DeckBuilder.build_deck()
	deck.shuffle()

	var stock_cards = deck.slice(0, 24)
	stock_pile.set_cards(stock_cards)

	var tableau_cards = deck.slice(24)
	tableau_pile.set_cards(tableau_cards)
