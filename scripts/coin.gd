extends Area2D
var score = 0

func add_point():
	score += 1
	print(score)

func _on_body_entered(body: Node2D) -> void:
	if (body.isCharacter()):
		body.jumpBoost()
		queue_free()
