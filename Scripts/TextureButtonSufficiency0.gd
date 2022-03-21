class_name TextureButtonSufficiency0
extends "TextureButtonBase.gd"


func _ready():
	PATH_STATE_ACTIVE= "res://Resources/dollar_large_nobg.png"
	PATH_STATE_NEXT_POSSIBLE= "res://Resources/dollar_large_bgwhite.png"
	PATH_STATE_DISABLED= "res://Resources/dollar_large_bggray.png"
	DESCRIPTION = "Produces 56 CO2 (Megatonnes) and 168 Income (Mia $) per week.\n\n"
	PRICE_TO_BUY= 0

func set_active():
	state = STATE.ACTIVE
	
	var sceneRootNode= get_parent().get_parent().get_parent()
	sceneRootNode.get_node("Data").bipOfThisInfrastructurePerContinentPerTurn = 168
	sceneRootNode.get_node("Data").co2OfThisInfrastructurePerContinentPerTurn = 56
	sceneRootNode.get_node("Data").economySize = ECONOMY_SIZE.LARGE
	sceneRootNode.get_node("ColorRectSufficiency/ColorRectSuff2/TextureButtonSufficiency50").state= STATE.NEXT_POSSIBLE
	sceneRootNode.get_node("ColorRectSufficiency/ColorRectSuff3/TextureButtonSufficiency100").state= STATE.DISABLED

func get_label_text():
	var labelText = "%s\n" % [DESCRIPTION]
	return labelText
