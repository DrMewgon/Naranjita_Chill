extends Node3D

@export var speed: float

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("ui_right"):
		position.x += speed * delta

	if Input.is_action_pressed("ui_left"):
		position.x -= speed * delta
		
	if Input.is_action_pressed("ui_up"):
		position.z -= speed * delta

	if Input.is_action_pressed("ui_down"):
		position.z += speed * delta

func _input(event: InputEvent) -> void:
	_physics_process(speed)


#func _on_animation_player_tree_entered() -> void:
#	_on_animation_player_tree_entered()
