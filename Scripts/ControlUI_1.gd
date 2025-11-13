extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_next_escene_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas/escena_2.tscn")
	


func _on_next_escene_2_pressed() -> void:
	$Control/Panel/TextEdit.visible = false
	$"../../../Mesa".visible = false


func _on_text_edit_focus_entered() -> void:
	$"../../../VirtualKeyboard".visible=true


func _on_text_edit_focus_exited() -> void:
	$"../../../VirtualKeyboard".visible=false
