extends Area2D

@onready var character = "res://scenes/character.tscn"

#func body_entered() -> void:
	
	


func _on_area_entered(area: Area2D) -> void:
	print("interacted")
	character.add_point()
	queue_free()
