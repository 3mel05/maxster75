extends RigidBody2D




func _on_Area2D_body_entered(body):
	if body.name == "pler2":
		queue_free()
	pass # Replace with function body.
