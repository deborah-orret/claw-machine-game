extends Sprite2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("hand")

func _process(delta: float) -> void:
	position.y -= 0.5

func _on_area_2d_body_entered(body: Node2D) -> void:
	body.queue_free()
