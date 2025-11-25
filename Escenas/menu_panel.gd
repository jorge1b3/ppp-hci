extends MeshInstance3D

# AQUÍ se crea la variable que faltaba
@onready var menu_viewport: SubViewport = get_node("../PanelesUI/Menu")

func _ready() -> void:
	# 1. Asegurar que exista un material local
	var mat := material_override
	if mat == null:
		mat = StandardMaterial3D.new()
		material_override = mat

	# 2. Crear ViewportTexture sin depender del editor
	var vt := ViewportTexture.new()
	vt.local_to_scene = true
	vt.viewport_path = menu_viewport.get_path()

	# 3. Asignarla al material
	mat.albedo_texture = vt

func _process(delta: float) -> void:
	pass
