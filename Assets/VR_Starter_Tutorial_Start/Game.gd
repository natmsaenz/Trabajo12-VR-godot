extends Spatial  

func _ready():
	var VR = ARVRServer.find_interface("OpenVR")
	if VR and VR.initialize():
		get_viewport().arvr = true
		get_viewport().hdr = false

		OS.vsync_enabled = false
		Engine.target_fps = 90


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass
