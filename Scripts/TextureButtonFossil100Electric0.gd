class_name TextureButtonFossil100Electric0
extends "TextureButtonBase.gd"

func _ready():
	PATH_STATE_ACTIVE= "res://Resources/car_fossil_100_nobg.png"
	PATH_STATE_NEXT_POSSIBLE= "res://Resources/car_fossil_100_bgwhite.png"
	PATH_STATE_DISABLED= "res://Resources/car_fossil_100_bggray.png"
	DESCRIPTION = "No CO2-Reduction.\n"
	PRICE_TO_BUY= 0

func set_active():
	state = STATE.ACTIVE

	var sceneRootNode= get_parent().get_parent().get_parent()
	sceneRootNode.get_node("Data").co2PercentageSubst = 100
	sceneRootNode.get_node("ColorRectSubstitution/ColorRect2/TextureButtonFossil75Electric25").state= STATE.NEXT_POSSIBLE
	sceneRootNode.get_node("ColorRectSubstitution/ColorRect3/TextureButtonFossil50Electric50").state= STATE.DISABLED
	sceneRootNode.get_node("ColorRectSubstitution/ColorRect4/TextureButtonFossil25Electric75").state= STATE.DISABLED
	sceneRootNode.get_node("ColorRectSubstitution/ColorRect5/TextureButtonFossil0Electric100").state= STATE.DISABLED

func get_label_text():
	var labelText = "%s\n" % [DESCRIPTION]
	return labelText
