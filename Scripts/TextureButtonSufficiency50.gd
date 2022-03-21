class_name TextureButtonSufficiency50
extends "TextureButtonBase.gd"

func _ready():
	PATH_STATE_ACTIVE= "res://Resources/dollar_medium_nobg.png"
	PATH_STATE_NEXT_POSSIBLE= "res://Resources/dollar_medium_bgwhite.png"
	PATH_STATE_DISABLED= "res://Resources/dollar_medium_bggray.png"
	DESCRIPTION = "Produces 28 CO2 (Megatonnes) and 84 Income (Mia $) per week.\nThis degrowth by factor 2 makes future upgrades cheaper.\n"
	PRICE_TO_BUY= 5000

func set_active():
	state = STATE.ACTIVE
	
	var sceneRootNode= get_parent().get_parent().get_parent()
	sceneRootNode.get_node("Data").bipOfThisInfrastructurePerContinentPerTurn = 84
	sceneRootNode.get_node("Data").co2OfThisInfrastructurePerContinentPerTurn = 28
	sceneRootNode.get_node("Data").economySize = ECONOMY_SIZE.MEDIUM
	sceneRootNode.get_node("ColorRectSufficiency/ColorRectSuff1/TextureButtonSufficiency0").state= STATE.ACTIVE
	sceneRootNode.get_node("ColorRectSufficiency/ColorRectSuff3/TextureButtonSufficiency100").state= STATE.NEXT_POSSIBLE

func get_label_text():
	var labelText = "%s\nPrice is %d Income\n\n" % [DESCRIPTION, PRICE_TO_BUY * ECONOMY_SIZE.LARGE]
	return labelText
