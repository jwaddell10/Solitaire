<<<<<<< HEAD

	#var card = card_scene.instantiate()
	#card.rank = "Ace"
	#card.suit = "Hearts"
	#card.position = Vector2(200, 200)
	#add_child(card)
#
	#var card2 = card_scene.instantiate()
	#card2.rank = "Jack"
	#card2.suit = "Clubs"
	#card2.position = Vector2(350, 200)
	#add_child(card2)
=======
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
			
>>>>>>> a04a6ebf33e71a07223254593601ecf9876688d9
