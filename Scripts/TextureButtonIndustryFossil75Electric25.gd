extends "TextureButtonBase.gd"

func _ready():
	PATH_STATE_ACTIVE= "res://Resources/factory_fossil_75_nobg.png"
	PATH_STATE_NEXT_POSSIBLE= "res://Resources/factory_fossil_75_bgwhite.png"
	PATH_STATE_DISABLED= "res://Resources/factory_fossil_75_bggray.png"
	DESCRIPTION = "Replace some coal-/\noil-based factories with electric ones.\nReduces CO2 by 25%.\n"
	PRICE_TO_BUY= 2500

func set_active():
	state = STATE.ACTIVE
	
	var sceneRootNode= get_parent().get_parent().get_parent()
	sceneRootNode.get_node("Data").co2PercentageSubst = 75
	sceneRootNode.get_node("ColorRectSubstitution/ColorRect1/TextureButtonFossil100Electric0").state= STATE.ACTIVE
	sceneRootNode.get_node("ColorRectSubstitution/ColorRect3/TextureButtonFossil50Electric50").state= STATE.NEXT_POSSIBLE
	sceneRootNode.get_node("ColorRectSubstitution/ColorRect4/TextureButtonFossil25Electric75").state= STATE.DISABLED
	sceneRootNode.get_node("ColorRectSubstitution/ColorRect5/TextureButtonFossil0Electric100").state= STATE.DISABLED
