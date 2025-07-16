extends Node

@onready var menu_audio = $AudioStreamPlayer

@onready var menu_main = $Menu
@onready var button_demo3d_main = $demo3d_main
var button_demo3d_split_main
var button_demo2d_main
var button_credits_main
var button_exit_main

@onready var menu_credits = $Credits
var button_exit_credits

@onready var menu_pause = $Pause
var button_resume_pause
var button_back_pause
var button_exit_pause
var child_scene

@onready var scene_demo3d = "res://scenes/game.tscn"
@onready var scene_demo3d_split = "res://scenes/demo_3d/third_person/world_split_screen.tscn"
@onready var scene_demo2d = "res://scenes/demo_2d/demo_2d.tscn"


func load_scene(scene_path):
	var scene = load(scene_path)
	var instance = scene.instantiate()
	add_child(instance)
	move_child(instance, 0)
	return instance

func button_connect(button, button_signal):
	if not button.pressed.is_connected(button_signal):
		button.pressed.connect(button_signal)

func reset_menu(music_play=true):
	if music_play:
		menu_audio.play()
	menu_main.visible = true
	menu_credits.visible = false
	menu_pause.visible = false

func hide_menu():
	menu_audio.stop()
	menu_main.visible = false
	menu_credits.visible = false
	menu_pause.visible = false

func _ready() -> void:
	# Init
	reset_menu()
	
	# Configure buttons main menu
	button_demo3d_main = menu_main.get_node("MarginContainer/MarginContainer/VBoxContainer/Demo3D")
	button_connect(button_demo3d_main, _button_demo3d_main)
	button_demo3d_split_main = menu_main.get_node("MarginContainer/MarginContainer/VBoxContainer/Demo3DSplit")
	button_connect(button_demo3d_split_main, _button_demo3d_split_main)
	button_demo2d_main = menu_main.get_node("MarginContainer/MarginContainer/VBoxContainer/Demo2D")
	button_connect(button_demo2d_main, _button_demo2d_main)
	button_credits_main = menu_main.get_node("MarginContainer/MarginContainer/VBoxContainer/Credits")
	button_connect(button_credits_main, _button_credits_main)
	button_exit_main = menu_main.get_node("MarginContainer/MarginContainer/VBoxContainer/Exit")
	button_connect(button_exit_main, _button_exit_main)
	
	# Configure buttons credits menu
	button_exit_credits = menu_credits.get_node("MarginContainer/MarginContainer/VBoxContainer/Exit")
	button_connect(button_exit_credits, _button_exit_credits)
	
	# Configuration pause menu
	button_resume_pause = menu_pause.get_node("MarginContainer/MarginContainer/VBoxContainer/Resume")
	button_connect(button_resume_pause, _button_resume_pause)
	button_back_pause = menu_pause.get_node("MarginContainer/MarginContainer/VBoxContainer/Back")
	button_connect(button_back_pause, _button_back_pause)
	button_exit_pause = menu_pause.get_node("MarginContainer/MarginContainer/VBoxContainer/Exit")
	button_connect(button_exit_pause, _button_exit_pause)

func pause_reset():
	menu_pause.visible = false
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	child_scene.process_mode = PROCESS_MODE_INHERIT

func _process(delta: float) -> void:
	if not menu_main.visible and not menu_credits.visible:
		if Input.is_action_just_pressed("escape"):
			if menu_pause.is_visible_in_tree():
				pause_reset()
			else:
				menu_pause.visible = true
				Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
				child_scene.process_mode = PROCESS_MODE_DISABLED

# Button main
func _button_demo3d_main():
	print("[INFO] Init DEMO 3D")
	# Replace scene
	#get_tree().change_scene_to_file(scene_demo3d)
	
	# Load scene
	child_scene = load_scene(scene_demo3d)
	hide_menu()

func _button_demo3d_split_main():
	print("[INFO] Init DEMO 3D")
	# Replace scene
	#get_tree().change_scene_to_file(scene_demo3d)
	
	# Load scene
	child_scene = load_scene(scene_demo3d_split)
	hide_menu()


func _button_demo2d_main():
	print("[INFO] Init DEMO 2D")
	child_scene = load_scene(scene_demo2d)
	hide_menu()

func _button_credits_main():
	menu_main.visible = false
	menu_credits.visible = true
	
func _button_exit_main():
	get_tree().quit()

# Buton credits
func _button_exit_credits():
	reset_menu(false)

func _on_credits_credits_finished() -> void:
	reset_menu(false)

# Button pause
func _button_resume_pause():
	print("pause resume")
	pause_reset()

func _button_back_pause():
	print("pause exit")
	reset_menu()
	child_scene.queue_free()

func _button_exit_pause():
	get_tree().quit()
