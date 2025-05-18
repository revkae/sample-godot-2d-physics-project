extends Node2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name != "RigidBody2D": return;
	body.apply_central_impulse(Vector2.UP.rotated(rotation) * 400)
