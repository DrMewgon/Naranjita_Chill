extends Control

@onready var audio = $VBoxContainer/ButtonStart/StartSplashSound

func _on_button_exit_pressed() -> void:
	get_tree().quit() # Replace with function body.

	
func _on_button_options_pressed() -> void:
	#get_tree().change_scene_to_file( "res://scenes/test_options_menu.tscn")
	#audio.play()
	pass


func _on_button_start_pressed() -> void:
	#print("start pressed")
	#audio.play()
	pass


#func _on_title_shadow_anim_animation_started(anim_name: StringName) -> void:
#	get_tree().
#	$title_shadow/title_shadow_anim
