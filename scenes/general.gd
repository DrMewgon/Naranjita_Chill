extends Control

@onready var main_menu = $MainMenu
@onready var options_menu = $TestOptionsMenu
@onready var game_scene = $Game

@onready var button_sound = $ButtonSound
@onready var options_menu_slider_music = "VBoxContainer2/Music/musicslider"
@onready var options_menu_slider_sfx = "VBoxContainer2/SFX/SFX slider"

func button_connect(button, button_signal):
	if not button.pressed.is_connected(button_signal):
		button.pressed.connect(button_signal)

func reset_menu():
	main_menu.visible = false
	options_menu.visible = false
	game_scene.visible = false

func _ready() -> void:
	# Init
	reset_menu()
	main_menu.visible = true
	
	# Main menus
	var main_menu_start = main_menu.get_node("VBoxContainer/ButtonStart")
	button_connect(main_menu_start, _main_menu_start)
	
	
	var main_menu_options = main_menu.get_node("VBoxContainer/ButtonOptions")
	button_connect(main_menu_options, _main_menu_options)
	
	# Options
	var options_menu_back = options_menu.get_node("back")
	button_connect(options_menu_back, _options_menu_back)
	
	#var options_menu_slider_music = options_menu.get_node("VBoxContainer2/Music/musicslider")
	#button_connect(options_menu_slider_music, HSlider)
	
	#var options_menu_slider_sfx = options_menu.get_node("VBoxContainer2/SFX/SFX slider")
	#button_connect(options_menu_slider_sfx,HSlider)

func _main_menu_start():
	button_sound.play()
	reset_menu()
	game_scene.visible = true
	#get_tree().change_scene_to_file("res://scenes/game.tscn")
	print("start pressed")
	
func _main_menu_options():
	button_sound.play()
	reset_menu()
	options_menu.visible = true
	
func _options_menu_back():
	button_sound.play()
	reset_menu()
	main_menu.visible = true
	
