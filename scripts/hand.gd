extends Sprite2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("hand")

func _process(delta: float) -> void:
	position.y -= 0.5

func isCharacter():
	return false


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("boulders"):
		body.queue_free()
	if body.is_in_group("character"):
		body.queue_free()
		get_tree().reload_current_scene()
	
