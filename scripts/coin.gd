extends Area2D
#func body_entered() -> void:

#func _on_area_entered(area: CharacterBody2D):
	


func _on_body_entered(body: Node2D) -> void:
	print("interacted")
	if (body.isCharacter()):
		body.add_point()
	queue_free()
