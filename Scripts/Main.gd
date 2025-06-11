### Main.gd

extends Node3D

# Node Refs
@onready var menu = $Menu
@onready var world = $World
@onready var player = $Player
@onready var button_start = $Menu/Container/ButtonStart
@onready var level_label = $Menu/Container/LevelLabel
@onready var menu_music = $Sounds/MenuMusic
@onready var level_music = $Sounds/LevelMusic
func _ready():
	menu.visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	level_music.stop()
	menu_music.play()
	update_level_label()
	# Ensure static platform under player
	spawn_start_platform()

	# --- Skybox setup ---
	var env := Environment.new()
	env.background_mode = Environment.BG_COLOR
	env.background_color = Color(0.1, 0.1, 0.1)  # Dark grey

# Show last saved lvel
func update_level_label():
	Global.load_game() 
	level_label.text = "last saved level: %d" % Global.level 
	
# Start New/Resume Game
func _on_button_start_pressed():
	if button_start.text == "NEW GAME":
		Global.new_game()
	menu.visible = false
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	menu_music.stop()
	level_music.play()
	get_tree().paused = false

# About screen
func _on_button_about_pressed():
	if button_start.text == "ABOUT":
		Global.new_game()
	menu.visible = false
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	menu_music.stop()
	level_music.play()
	get_tree().paused = false

# Exit Game
func _on_button_exit_pressed():
	get_tree().quit()

# Pause Menu
func _input(event):
	if event.is_action_pressed("ui_menu"):
		update_level_label() 
		menu.visible = true
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		menu_music.play()
		level_music.stop()
		button_start.text = "RESUME LEVEL"
		get_tree().paused = true
		
func spawn_start_platform():
	var platform = StaticBody3D.new()
	platform.name = "StartPlatform"
	platform.transform.origin = Vector3(0, -1, 0)

	var mesh_instance = MeshInstance3D.new()
	var mesh = BoxMesh.new()
	mesh.size = Vector3(6, 1, 50)
	mesh_instance.mesh = mesh
	platform.add_child(mesh_instance)

	var collision = CollisionShape3D.new()
	var shape = BoxShape3D.new()
	shape.size = Vector3(6, 1, 50)
	collision.shape = shape
	platform.add_child(collision)

	add_child(platform)


func _on_about_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/About.tscn")  # Adjust path if needed
