extends "TextureButtonBase.gd"

func _ready():
	PATH_STATE_ACTIVE= "res://Resources/agri_meat_25_nobg.png"
	PATH_STATE_NEXT_POSSIBLE= "res://Resources/agri_meat_25_bgwhite.png"
	PATH_STATE_DISABLED= "res://Resources/agri_meat_25_bggray.png"
	DESCRIPTION = "Replace some Meat with vegetarian food.\nReduces CO2 by 75%.\n"
	PRICE_TO_BUY= 7500


func set_active():
	state = STATE.ACTIVE
	
	var sceneRootNode= get_parent().get_parent().get_parent()
	sceneRootNode.get_node("Data").co2PercentageSubst = 25
	sceneRootNode.get_node("ColorRectSubstitution/ColorRect1/TextureButtonFossil100Electric0").state= STATE.ACTIVE
	sceneRootNode.get_node("ColorRectSubstitution/ColorRect2/TextureButtonFossil75Electric25").state= STATE.ACTIVE
	sceneRootNode.get_node("ColorRectSubstitution/ColorRect3/TextureButtonFossil50Electric50").state= STATE.ACTIVE
	sceneRootNode.get_node("ColorRectSubstitution/ColorRect5/TextureButtonFossil0Electric100").state= STATE.NEXT_POSSIBLE
