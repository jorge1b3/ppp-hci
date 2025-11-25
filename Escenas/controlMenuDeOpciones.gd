extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_p_financiero_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenas/transaccion00.tscn")

func _on_alm_datos_pressed() -> void:
	print("Almacenamiento de datos como trabajo futuro")

func _on_ay_compras_pressed() -> void:
	print("Ayuda en compras virtuales como trabajo futuro")

func _on_busqweb_pressed() -> void:
	print("Búsqueda en web como trabajo futuro")
