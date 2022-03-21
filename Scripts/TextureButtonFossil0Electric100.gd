class_name TextureButtonFossil0Electric100

extends "TextureButtonBase.gd"

func _ready():
	PATH_STATE_ACTIVE= "res://Resources/car_fossil_00_nobg.png"
	PATH_STATE_NEXT_POSSIBLE= "res://Resources/car_fossil_00_bgwhite.png"
	PATH_STATE_DISABLED= "res://Resources/car_fossil_00_bggray.png"
	DESCRIPTION = "Full CO2 Elimination in the traffic domain.\n"
	PRICE_TO_BUY= 10000

func set_active():
	state = STATE.ACTIVE
	var sceneRootNode= get_parent().get_parent().get_parent()
	sceneRootNode.get_node("Data").co2PercentageSubst = 0
	sceneRootNode.get_node("ColorRectSubstitution/ColorRect1/TextureButtonFossil100Electric0").state= STATE.ACTIVE
	sceneRootNode.get_node("ColorRectSubstitution/ColorRect2/TextureButtonFossil75Electric25").state= STATE.ACTIVE
	sceneRootNode.get_node("ColorRectSubstitution/ColorRect3/TextureButtonFossil50Electric50").state= STATE.ACTIVE
	sceneRootNode.get_node("ColorRectSubstitution/ColorRect4/TextureButtonFossil25Electric75").state= STATE.ACTIVE
