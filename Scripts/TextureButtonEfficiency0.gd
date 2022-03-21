extends "TextureButtonBase.gd"

func _ready():
	PATH_STATE_ACTIVE= "res://Resources/recycling_small_nobg.png"
	PATH_STATE_NEXT_POSSIBLE= "res://Resources/recycling_small_bgwhite.png"
	PATH_STATE_DISABLED= "res://Resources/recycling_small_bggray.png"
	DESCRIPTION = "No CO2 reduction.\n\n"
	PRICE_TO_BUY= 0

func set_active():
	state = STATE.ACTIVE
	
	var sceneRootNode= get_parent().get_parent().get_parent()
	sceneRootNode.get_node("Data").co2PercentageEff = 100
	sceneRootNode.get_node("ColorRectEfficiency/ColorRectEff2/TextureButtonEfficiency25").state= STATE.NEXT_POSSIBLE
	sceneRootNode.get_node("ColorRectEfficiency/ColorRectEff3/TextureButtonEfficiency50").state= STATE.DISABLED

func get_label_text():
	var labelText = "%s\n" % [DESCRIPTION]
	return labelText
