extends SubViewportContainer

func _can_drop_data(at_position, data):
	return data.item_id == "godot_icon"

func _drop_data(at_position, data):
	var component = RigidBody2D.new()
	component.position = at_position
	
	var sprite = Sprite2D.new()
	sprite.texture = load("res://icon.svg")
	sprite.modulate = data.modulation
	component.add_child(sprite)
	
	var shape = CollisionShape2D.new()
	var rect = RectangleShape2D.new()
	rect.size = Vector2(64, 64)
	shape.shape = rect
	component.add_child(shape)
	
	%Node2D.add_child(component)
