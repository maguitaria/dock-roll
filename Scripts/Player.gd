extends CharacterBody3D

const SPEED = 5.0
const JUMP_VELOCITY = 10.0
const GRAVITY = -24.8  # gravity is usually negative in Godot

func _physics_process(delta):
	var direction = Vector3.ZERO

	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1

	direction = direction.normalized()
	velocity.x = direction.x * SPEED

	if is_on_floor() and Input.is_action_just_pressed("ui_up"):
		velocity.y = JUMP_VELOCITY

	# Apply gravity
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	# Move the player using built-in velocity
	move_and_slide()
	
	# Player effects
func apply_effect(effect_name):
	match effect_name:
		"increase_score":
			Global.score += 1
			Global.score_updated.emit()
		"boost_jump":
			Global.jump_boost_count += 1
			Global.jump_boost_updated.emit()
		"decrease_time":
			if Global.level_time >= 10:
				Global.level_time -= 10
				Global.level_time_updated.emit()
