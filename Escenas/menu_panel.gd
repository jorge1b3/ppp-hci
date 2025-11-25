extends MeshInstance3D

# AQUÍ se crea la variable que faltaba
# Nota: La ruta de nodo 'PanelesUI/Menu' DEBE ser correcta desde el padre de este script.
@onready var menu_viewport: SubViewport = get_node("../PanelesUI/Menu")

func _ready() -> void:
	# 1. Asegurar que exista un material local (usando 'material_override')
	var mat: StandardMaterial3D = material_override as StandardMaterial3D
	if mat == null:
		mat = StandardMaterial3D.new()
		material_override = mat

	# Comprobación de seguridad: Asegurar que el Viewport se haya encontrado
	if menu_viewport == null:
		push_error("No se encontró el nodo SubViewport en la ruta '../PanelesUI/Menu'")
		return

	# 2. Crear ViewportTexture sin depender del editor
	var vt := ViewportTexture.new()
	
	# === LÍNEA CORREGIDA: 'local_to_scene' no existe en ViewportTexture. ===
	# vt.local_to_scene = true # <- ELIMINAR ESTA LÍNEA

	# Asignar la ruta del Viewport
	vt.viewport_path = menu_viewport.get_path()

	# 3. Asignarla al material (albedo_texture)
	mat.albedo_texture = vt

func _process(delta: float) -> void:
	pass
