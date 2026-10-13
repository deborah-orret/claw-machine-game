extends RigidBody2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	self.position.y += 1
	self.linear_velocity.y *= delta 

func _on_body_entered(body: Node) -> bool:
	if (body.type == "character"):
		return false
	else:
		return true
