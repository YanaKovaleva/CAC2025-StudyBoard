extends Sprite2D

var m_offset = Vector2.ZERO;
var original = Vector2(250,750)
var dragged = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass;
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index==MOUSE_BUTTON_LEFT:
			if dragged: #if was already dragged, switch dragged off
				dragged = false;
				var new_sprite = duplicate()
				get_parent().add_child(new_sprite)
				new_sprite.global_position = original
			else : #else, start dragging
				#leave copy
				
				#drag
				global_position = get_global_mouse_position() + m_offset;
