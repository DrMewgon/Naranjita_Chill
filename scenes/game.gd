extends Node3D
"res://scenes/game.tscn"

@onready var menu_audio = "../MainMusic"
@onready var player = $player
@onready var speed: float

func _on_bobbing_animation_started(_anim_name: StringName) -> void:
	pass # Replace with function body.

#func _on_player_child_entered_tree(node: Node3D) -> void:
	#Input()
	#pass # Replace with function body.

#func _on_player_ready() -> void:
	#child_entered_tree(node: $player)
