extends Sprite2D

func display_card(card):
	var rank = card.rank
	var suit = card.suit
	var card_name = "res://card_assets/{rank}_of_{suit}.png".format({"rank": rank, "suit": suit})
	var path = card_name.to_lower()
	texture = load(path)
	#tween.tween_property(texture, "position", waste_pile_location.position, 1)
