extends Node2D

@onready var CardScene = preload("res://scenes/Card.tscn")

func _ready():
	print("ready")
	#var suits = ["Spades", "Hearts", "Diamonds", "Clubs"]
	#var ranks = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
#
	#var card_index = 0
	#for suit in suits:
		#for rank in ranks:
			#var card = CardScene.instantiate()
			#card.rank = rank
			#card.suit = suit
			#add_child(card)
#
			#var x = 50 + (card_index % 13) * 80
			#var y = 100 + int(card_index / 13) * 120
			#card.position = Vector2(x, y)
#
			#card_index += 1
			
