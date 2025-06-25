extends Node

@export var bullet:PackedScene
var bullet_speed : int = 500
var block_speed: int = 150
var min_blocks_health: int = 10
var max_blocks_health: int = 20

func _on_fire_rate_timer_timeout() -> void:
	var bullet_instance:Area2D = bullet.instantiate()
	add_child(bullet_instance) 
	bullet_instance.position = $Player.position
