extends Sprite2D

var m_offset = Vector2.ZERO;
var dragged = false;
var star_scn = preload("res://star.tscn")
@onready var parent = $/root/board
var mouse_here = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if dragged:
		global_position = get_global_mouse_position() + m_offset;
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if mouse_here:
			if event.button_index==MOUSE_BUTTON_LEFT:
				if dragged:
					dragged = false;
					#make_star(200,200,false)
					#var scene = load("res://star.tscn")
					#var new_star = scene.instantiate()
					#parent.add_child(new_star)
					#new_star.global_postion = Vector2(200,300)
				else :
					dragged = true;
					m_offset = global_position - get_global_mouse_position();
	#func make_star(x, y, dragging):
		#var new_star = star_scn.instantiate();
		#parent.add_child(new_star)
		#new_star.global_position = Vector2(x,y);
		#new_star.dragged = dragging;
		#
		#new_star.global_position.local_to_scene = true
		#new_star.dragged.local_to_scene = true
		



func _on_excl_area_mouse_entered() -> void:
	mouse_here=true


func _on_excl_area_mouse_exited() -> void:
	mouse_here=false
