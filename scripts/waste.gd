extends Node2D

@onready var card : Sprite2D = $Sprite
var waste = [];

func add_to_waste(card):
	waste.push_front(card)
