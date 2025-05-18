extends Node2D

func _ready():
	_display_card()
	
func _display_card():
	var texture = load("res://card_assets/back.png")
	$Sprite2D.texture = texture
