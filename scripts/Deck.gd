# res://scripts/Deck.gd
extends Object

class_name DeckBuilder

static func build_deck():
	var ranks = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
	var suits = ["Hearts", "Spades", "Diamonds", "Clubs"]
	var deck = []
	for suit in suits:
		for rank in ranks:
			deck.append({ "rank": rank, "suit": suit })
	return deck
