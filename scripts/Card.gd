extends Node2D

var suit: String
var rank: String
var is_face_up: bool = false

func _ready():
	rank = "Ace"
	suit = "Spades"
	flip_card()

func flip_card():
	is_face_up = !is_face_up
	$Sprite.texture = load(get_texture_path())

func get_texture_path() -> String:
	var path = "res://card_assets/{rank}_of_{suit}.png".format({"rank": rank.to_lower(), "suit": suit.to_lower()})
	print(path)
	if is_face_up:
		return "res://card_assets/%s_of_%s.png" % [rank.to_lower(), suit.to_lower()]
	else:
		return "res://card_assets/back.png"
