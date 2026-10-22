extends Area2D
var score = 0

func add_point():
	score += 1
	print(score)

func _on_mouse_entered() -> void:
	add_point()
	queue_free()
