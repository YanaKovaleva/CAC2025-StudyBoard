extends Timer

@onready var doneText = $/root/timer/Node2D/goodJob
@onready var enterTime = $/root/timer/Node2D/enterTime
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	wait_time = 0.01;
	autostart = false;


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass;


func _on_timeout() -> void:
	doneText.visible = true;


func _on_enter_time_text_changed(_new_text: String) -> void:
	pass


func _on_go_btn_pressed() -> void:
	paused = false;


func _on_stop_btn_pressed() -> void:
	paused = true;


func _on_enter_time_text_submitted(new_text: String) -> void:
	paused = true;
	wait_time = float(new_text)*60;
	start();
