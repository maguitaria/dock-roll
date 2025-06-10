### Collectibles.gd

extends Area3D

var collectible_name 
var collectibles

func _on_body_entered(body):
	if body.is_in_group("Player"):
		var effect_name = Global.collectibles_resources[collectible_name]["effect"]
		body.apply_effect(effect_name)
		queue_free()

func set_collectible_type(type):
	collectible_name = type
	var collectible_data = Global.collectibles_resources[type]
	var collectible_resource = collectible_data["scene"]
	var collectible_item = collectible_resource.instantiate()
	add_child(collectible_item)  # Adds it to this Area3D node
