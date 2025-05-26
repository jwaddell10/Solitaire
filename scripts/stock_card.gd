extends Sprite2D

@onready var label: Label = $Label

func _check_var():
	print(label, 'label in card')

var flipped: bool = false:
	get:
		return flipped
	set(value):
		if value:
			label.text = "Face Down"
		else:
			label.text = "Face Up"
		flipped = value
		#if event.pressed:
			#flipped = !flipped
