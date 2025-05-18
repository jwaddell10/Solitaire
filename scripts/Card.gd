extends Node2D
#
var ranks = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
var suits = ["Hearts", "Spades", "Diamonds", "Clubs"]
var deck = [];

func _ready():
	get_cards()
	print_deck()

func get_cards():
	for suit in suits:
		for rank in ranks:
			var card = {
				"rank": rank,
				"suit": suit
			}
			deck.append(card)

func print_deck():
	print(deck, deck.size())
#
#func _ready():
	#if rank != "" and suit != "":
		#flip_card()
	#else:
		#print("Warning: rank or suit not set before _ready()")
#
#func _process(delta):
	#if Input.is_action_just_pressed("Flip Card"):
		#flip_card()
#
#func flip_card():
	#is_face_up = !is_face_up
	#$Sprite.texture = load(get_texture_path())
#
#func get_texture_path() -> String:
	#if is_face_up:
		#return "res://card_assets/%s_of_%s.png" % [rank.to_lower(), suit.to_lower()]
	#else:
		#return "res://card_assets/back.png"

#func setup(new_rank: String, new_suit: String, face_up := false):
	#rank = new_rank
	#suit = new_suit
	#is_face_up = face_up
	#flip_card()
