extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	gravity_scale=0
	
func isCharacter():
	return false;
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("hand"):
		self.queue_free()
	if body.is_in_group("terrain"):
		self.queue_free()

	

func _on_timer_timeout() -> void:
	gravity_scale= randi_range(1,2);
	add_to_group("boulders")


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.isCharacter():
		body.queue_free()
		get_tree().reload_current_scene()
