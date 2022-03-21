extends "TextureButtonBase.gd"

func _ready():
	PATH_STATE_ACTIVE= "res://Resources/factory_fossil_50_nobg.png"
	PATH_STATE_NEXT_POSSIBLE= "res://Resources/factory_fossil_50_bgwhite.png"
	PATH_STATE_DISABLED= "res://Resources/factory_fossil_50_bggray.png"
	DESCRIPTION = "Replace some coal-/\noil-based factories with electric ones.\nReduces CO2 by 50%.\n"
	PRICE_TO_BUY= 5000

func set_active():
	state = STATE.ACTIVE
	
	var sceneRootNode= get_parent().get_parent().get_parent()
	sceneRootNode.get_node("Data").co2PercentageSubst = 50
	sceneRootNode.get_node("ColorRectSubstitution/ColorRect1/TextureButtonFossil100Electric0").state= STATE.ACTIVE
	sceneRootNode.get_node("ColorRectSubstitution/ColorRect2/TextureButtonFossil75Electric25").state= STATE.ACTIVE
	sceneRootNode.get_node("ColorRectSubstitution/ColorRect4/TextureButtonFossil25Electric75").state= STATE.NEXT_POSSIBLE
	sceneRootNode.get_node("ColorRectSubstitution/ColorRect5/TextureButtonFossil0Electric100").state= STATE.DISABLED
