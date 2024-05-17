extends Spatial  

func _ready():
	var VR = ARVRServer.find_interface("OpenVR")
	if VR and VR.initialize():
		get_viewport().arvr = true
		get_viewport().hdr = false

		OS.vsync_enabled = false
		Engine.target_fps = 90
	var spheres_left = 10
	var sphere_ui = null

func remove_sphere():
	spheres_left -= 1

	if sphere_ui:
		sphere_ui.update_ui(spheres_left)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass
