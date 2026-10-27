extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	gravity_scale= randi_range(1,2);
	add_to_group("boulders")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("hand"):
		self.queue_free()
		
