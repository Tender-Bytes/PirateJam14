extends Node2D

@onready var area = get_node("Area2D/CollisionShape2D")


func _on_homeless_area_2d_body_exited(body):
	body.to_center(area.position)
