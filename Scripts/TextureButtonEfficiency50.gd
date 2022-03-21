extends "TextureButtonBase.gd"

func _ready():
	PATH_STATE_ACTIVE= "res://Resources/recycling_large_nobg.png"
	PATH_STATE_NEXT_POSSIBLE= "res://Resources/recycling_large_bgwhite.png"
	PATH_STATE_DISABLED= "res://Resources/recycling_large_bggray.png"
	DESCRIPTION = "Reduces 50% CO2.\n"
	PRICE_TO_BUY= 5000

func set_active():
	state = STATE.ACTIVE
	
	var sceneRootNode= get_parent().get_parent().get_parent()
	sceneRootNode.get_node("Data").co2PercentageEff = 50
	sceneRootNode.get_node("ColorRectEfficiency/ColorRectEff1/TextureButtonEfficiency0").state= STATE.ACTIVE
	sceneRootNode.get_node("ColorRectEfficiency/ColorRectEff2/TextureButtonEfficiency25").state= STATE.ACTIVE
