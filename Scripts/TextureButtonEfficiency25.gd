extends "TextureButtonBase.gd"

func _ready():
	PATH_STATE_ACTIVE= "res://Resources/recycling_medium_nobg.png"
	PATH_STATE_NEXT_POSSIBLE= "res://Resources/recycling_medium_bgwhite.png"
	PATH_STATE_DISABLED= "res://Resources/recycling_medium_bggray.png"
	DESCRIPTION = "Reduces 25% CO2.\n"
	PRICE_TO_BUY= 2500

func set_active():
	state = STATE.ACTIVE
	
	var sceneRootNode= get_parent().get_parent().get_parent()
	sceneRootNode.get_node("Data").co2PercentageEff = 75
	sceneRootNode.get_node("ColorRectEfficiency/ColorRectEff1/TextureButtonEfficiency0").state= STATE.ACTIVE
	sceneRootNode.get_node("ColorRectEfficiency/ColorRectEff3/TextureButtonEfficiency50").state= STATE.NEXT_POSSIBLE
