class_name TextureButtonSufficiency100
extends "TextureButtonBase.gd"

func _ready():
	PATH_STATE_ACTIVE= "res://Resources/dollar_small_nobg.png"
	PATH_STATE_NEXT_POSSIBLE= "res://Resources/dollar_small_bgwhite.png"
	PATH_STATE_DISABLED= "res://Resources/dollar_small_bggray.png"
	DESCRIPTION = "Produces 7 CO2 (Megatonnes) and 21 Income (Mia $) per week.\nThis degrowth by factor 4 makes future upgrades cheaper.\n"
	PRICE_TO_BUY= 10000

func set_active():
	state = STATE.ACTIVE
	
	var sceneRootNode= get_parent().get_parent().get_parent()
	sceneRootNode.get_node("Data").bipOfThisInfrastructurePerContinentPerTurn = 21
	sceneRootNode.get_node("Data").co2OfThisInfrastructurePerContinentPerTurn = 7
	sceneRootNode.get_node("Data").economySize = ECONOMY_SIZE.SMALL
	sceneRootNode.get_node("ColorRectSufficiency/ColorRectSuff1/TextureButtonSufficiency0").state= STATE.ACTIVE
	sceneRootNode.get_node("ColorRectSufficiency/ColorRectSuff2/TextureButtonSufficiency50").state= STATE.ACTIVE

func get_label_text():
	var labelText = "%s\nPrice is %d Income\n\n" % [DESCRIPTION, PRICE_TO_BUY * ECONOMY_SIZE.MEDIUM]
	return labelText
