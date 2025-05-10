extends Node2D

@onready var card_scene = preload("res://scenes/Card.tscn")

func _ready():
	print("it works?")
	card.rank = "Ace"
	card.suit = "Hearts"
	card.position = Vector2(200, 200)
	add_child(card)

	var card2 = card_scene.instantiate()
	card2.rank = "Jack"
	card2.suit = "Clubs"
	card2.position = Vector2(350, 200)
	add_child(card2)
