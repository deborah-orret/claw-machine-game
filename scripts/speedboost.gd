extends Area2D

func _on_body_entered(body: Node2D) -> void:
	print("interacted")
	if (body.isCharacter()):
		body.speedUP()
	queue_free()
