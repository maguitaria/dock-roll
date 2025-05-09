extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var environment_node = Node3D.new()
	environment_node.name = "Environment"
	add_child(environment_node)

	create_directional_light(environment_node)
	create_sky_environment(environment_node)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func create_directional_light(parent: Node3D) -> DirectionalLight3D:
	var light = DirectionalLight3D.new()
	light.light_energy = 1.0
	light.shadow_enabled = true
	light.position = Vector3(-1, 600, -970)
	light.rotation_degrees = Vector3(-50, 170, -150)
	parent.add_child(light)
	return light

func create_sky_environment(parent: Node3D) -> WorldEnvironment:
	var world_env = WorldEnvironment.new()
	var env = Environment.new()
	world_env.environment = env

	# Set sky background
	env.background_mode = Environment.BG_SKY
	var sky = Sky.new()
	
	# TODO: Replace with a real .hdr or .png sky image path
	var sky_texture = load("res://Assets/Sky/sky_texture.hdr")
	sky.panorama = sky_texture
	env.sky = sky

	# Set fog
	env.fog_enabled = true
	env.fog_color = Color(0.7, 0.8, 0.9)
	env.fog_depth_begin = 100
	env.fog_depth_end = 1500
	env.fog_density = 0.03

	parent.add_child(world_env)
	return world_env
