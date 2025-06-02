extends Node2D

@onready var deck = $Deck

func _ready():
	deck.get_deck()
