extends Timer

@onready var doneText = $/root/timer/Node2D/goodJob
@onready var enterTime = $/root/timer/Node2D/enterTime
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	wait_time = 60.0;
	one_shot = true;
	autostart = true;


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass;


func _on_timeout() -> void:
	doneText.visible = true;


func _on_enter_time_text_changed(new_text: String) -> void:
	paused = true;
	wait_time = float(new_text);


func _on_go_btn_pressed() -> void:
	paused = false;


func _on_stop_btn_pressed() -> void:
	paused = true;
