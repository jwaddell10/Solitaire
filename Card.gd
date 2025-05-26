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

func _on_area_2d_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.pressed:
			flipped = !flipped
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
