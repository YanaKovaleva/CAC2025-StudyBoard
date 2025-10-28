extends Label

@onready var timer1=$/root/timer/Node2D/timer1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	text = "%d:%02d" % [floor(timer1.time_left / 60), int(timer1.time_left) % 60]


func _on_enter_time_text_submitted(new_text: String) -> void:
	text = "%d:%02d" % [floor(float(new_text) / 60), int(new_text) % 60]
