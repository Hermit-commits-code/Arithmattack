extends Control

@export var colors:Array[Color]

func _ready() -> void:
#	Will return 0 - 3 randomly
	$Background.color = colors[randi() % colors.size()]

func _process(delta: float) -> void:
	position.y += get_parent().blocks_speed * delta
