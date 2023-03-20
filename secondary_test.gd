extends Panel

func _can_drop_data(at_position, data):
	return data.item_id == "godot_icon"

func _drop_data(at_position, data):
	var component = TextureRect.new()
	component.texture = load("res://icon.svg")
	component.modulate = data.modulation
	component.position = at_position - (component.texture.get_size() * 0.5)
	add_child(component)
