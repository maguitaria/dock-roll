extends Area3D

var collectible_name
var collectibles


func _on_body_entered(body):
	if body.is_in_group("Player"):
		var effect_name = Global.collectibles_Assets[collectible_name]["effect"]
		body.apply_effect(effect_name)
		queue_free()

func set_collectible_type(new_type: String) -> void:
	var type = new_type
	print("Collectible type set to:", type)
