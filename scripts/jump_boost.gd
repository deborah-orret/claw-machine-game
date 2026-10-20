extends Area2D


func _on_body_entered(body: Node2D) -> void:
	print("jump boosted")
	if (body.isCharacter()):
		body.jumpBoost()
		queue_free()
	
