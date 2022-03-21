extends Timer

var time
var startyear
var totalbip
var countco2
var tutorialtab
var secondhalf

const CO2_BUDGET = 300000

# Called when the node enters the scene tree for the first time.
func _ready():
	connect ("timeout", self, "_on_Timer_timeout")
	init()

func init():
	time = 0
	totalbip = 0
	countco2= CO2_BUDGET
	startyear = 2022
	tutorialtab = true
	secondhalf = false

func show_values():
	var year = startyear + time / 52
	var week = time % 52 + 1
	
	#show new values in gui	
	var labelTimeValueNode = get_parent().get_node("ColorRect/LabelTime/LabelTimeValue")
	labelTimeValueNode.text= "%d/%d" % [week, year]

	var labelCO2ValueNode = get_parent().get_node("ColorRect/LabelCO2/LabelCO2Value")
	labelCO2ValueNode.text = "%d" % countco2
		
	var labelBIPValueNode = get_parent().get_node("ColorRect/LabelBIP/LabelBIPValue")
	labelBIPValueNode.text = "%d" % totalbip
	
	var bipPerMonthAfrica = 0
	var co2PerMonthAfrica = 0
	var bipPerMonthEurope = 0
	var co2PerMonthEurope = 0
	var bipPerMonthNorthAmerica = 0
	var co2PerMonthNorthAmerica = 0
	var bipPerMonthSouthAmerica = 0
	var co2PerMonthSouthAmerica = 0
	var bipPerMonthAsia = 0
	var co2PerMonthAsia = 0
	var bipPerMonthAustralia = 0
	var co2PerMonthAustralia = 0
	for item in get_tree().get_nodes_in_group("emitters"):
		var node = item.get_node("Data")
		if (node.getContinentName() == "Africa"):
			bipPerMonthAfrica = bipPerMonthAfrica + node.getBIP()
			co2PerMonthAfrica = co2PerMonthAfrica + node.getCO2()
		elif (node.getContinentName() == "Europe"):
			bipPerMonthEurope = bipPerMonthEurope + node.getBIP()
			co2PerMonthEurope = co2PerMonthEurope + node.getCO2()
		elif (node.getContinentName() == "NorthAmerica"):
			bipPerMonthNorthAmerica = bipPerMonthNorthAmerica + node.getBIP()
			co2PerMonthNorthAmerica = co2PerMonthNorthAmerica + node.getCO2()
		elif (node.getContinentName() == "SouthAmerica"):
			bipPerMonthSouthAmerica = bipPerMonthSouthAmerica + node.getBIP()
			co2PerMonthSouthAmerica = co2PerMonthSouthAmerica + node.getCO2()
		elif (node.getContinentName() == "Asia"):
			bipPerMonthAsia = bipPerMonthAsia + node.getBIP()
			co2PerMonthAsia = co2PerMonthAsia + node.getCO2()
		elif (node.getContinentName() == "Australia"):
			bipPerMonthAustralia = bipPerMonthAustralia + node.getBIP()
			co2PerMonthAustralia = co2PerMonthAustralia + node.getCO2()
		
	var labelBIPAfricaMap = get_parent().get_node("LabelAfricaBIP")
	var labelCO2AfricaMap = get_parent().get_node("LabelAfricaCO2")
	labelBIPAfricaMap.text = "%d" % bipPerMonthAfrica
	labelCO2AfricaMap.text = "%d" % co2PerMonthAfrica
	labelBIPAfricaMap.get_node("SpriteBIP").scale = Vector2 (float(bipPerMonthAfrica)/2000, float(bipPerMonthAfrica)/2000)
	labelCO2AfricaMap.get_node("SpriteCO2").scale = Vector2 (float(co2PerMonthAfrica)/500, float(co2PerMonthAfrica)/500)
	var labelBIPEuropeMap = get_parent().get_node("LabelEuropeBIP")
	var labelCO2EuropeMap = get_parent().get_node("LabelEuropeCO2")
	labelBIPEuropeMap.text = "%d" % bipPerMonthEurope
	labelCO2EuropeMap.text = "%d" % co2PerMonthEurope
	labelBIPEuropeMap.get_node("SpriteBIP").scale = Vector2 (float(bipPerMonthEurope)/2000, float(bipPerMonthEurope)/2000)
	labelCO2EuropeMap.get_node("SpriteCO2").scale = Vector2 (float(co2PerMonthEurope)/500, float(co2PerMonthEurope)/500)
	var labelBIPSouthAmericaMap = get_parent().get_node("LabelSouthAmericaBIP")
	var labelCO2SouthAmericaMap = get_parent().get_node("LabelSouthAmericaCO2")
	labelBIPSouthAmericaMap.text = "%d" % bipPerMonthSouthAmerica
	labelCO2SouthAmericaMap.text = "%d" % co2PerMonthSouthAmerica
	labelBIPSouthAmericaMap.get_node("SpriteBIP").scale = Vector2 (float(bipPerMonthSouthAmerica)/2000, float(bipPerMonthSouthAmerica)/2000)
	labelCO2SouthAmericaMap.get_node("SpriteCO2").scale = Vector2 (float(co2PerMonthSouthAmerica)/500, float(co2PerMonthSouthAmerica)/500)
	var labelBIPNorthAmericaMap = get_parent().get_node("LabelNorthAmericaBIP")
	var labelCO2NorthAmericaMap = get_parent().get_node("LabelNorthAmericaCO2")
	labelBIPNorthAmericaMap.text = "%d" % bipPerMonthNorthAmerica
	labelCO2NorthAmericaMap.text = "%d" % co2PerMonthNorthAmerica
	labelBIPNorthAmericaMap.get_node("SpriteBIP").scale = Vector2 (float(bipPerMonthNorthAmerica)/2000, float(bipPerMonthNorthAmerica)/2000)
	labelCO2NorthAmericaMap.get_node("SpriteCO2").scale = Vector2 (float(co2PerMonthNorthAmerica)/500, float(co2PerMonthNorthAmerica)/500)
	var labelBIPAsiaMap = get_parent().get_node("LabelAsiaBIP")
	var labelCO2AsiaMap = get_parent().get_node("LabelAsiaCO2")
	labelBIPAsiaMap.text = "%d" % bipPerMonthAsia
	labelCO2AsiaMap.text = "%d" % co2PerMonthAsia
	labelBIPAsiaMap.get_node("SpriteBIP").scale = Vector2 (float(bipPerMonthAsia)/2000, float(bipPerMonthAsia)/2000)
	labelCO2AsiaMap.get_node("SpriteCO2").scale = Vector2 (float(co2PerMonthAsia)/500, float(co2PerMonthAsia)/500)
	var labelBIPAustraliaMap = get_parent().get_node("LabelAustraliaBIP")
	var labelCO2AustraliaMap = get_parent().get_node("LabelAustraliaCO2")
	labelBIPAustraliaMap.text = "%d" % bipPerMonthAustralia
	labelCO2AustraliaMap.text = "%d" % co2PerMonthAustralia
	labelBIPAustraliaMap.get_node("SpriteBIP").scale = Vector2 (float(bipPerMonthAustralia)/2000, float(bipPerMonthAustralia)/2000)
	labelCO2AustraliaMap.get_node("SpriteCO2").scale = Vector2 (float(co2PerMonthAustralia)/500, float(co2PerMonthAustralia)/500)

func _on_Timer_timeout():
	if time == 0:
		get_parent().get_node("PopupPanelTutorial").show()
		stop()
	
	time = time + 1
		
	# Update BIP and CO2 Value
	var bip = 0
	var co2 = 0
	
	#loop through all infrastructures of all continents
	for item in get_tree().get_nodes_in_group("emitters"):
		var node = item.get_node("Data")
		bip = bip + node.getBIP()
		co2 = co2 + node.getCO2()
	totalbip = totalbip + bip
	countco2 = countco2 - co2
	
	show_values()
	
	if countco2 < CO2_BUDGET/2 && !secondhalf && countco2 >= 0:
		print (countco2)
		stop()
		get_parent().get_node("PopupPanelMiddleGame").show()
		secondhalf= true
	
	var win = false
	var loose = false
	if countco2 < 0:
		loose = true
		get_node("LoseSound").play()
	if co2 < 1:
		win = true
		get_node("WinSound").play()
		
	if win or loose:
		stop()
		var music= get_node("Music")
		music.stop()
		var popup= get_node("/root/Node2D/PanelStartStop") as Panel
		popup.get_node("Music").play()
		var label= popup.get_node("ColorRect").get_node("Label")
		if (win):
			label.text= "Congratulations! You succeed!\n\nYou saved the world!\nThe global temperature rises only 1,5 °C!\n\nTry again?"
		else:
			label.text= "Game over. You failed!\n\nThe global temperature rises beyond\n1,5 °C! The earth faces\nthe climate catastrophe!\n\nTry again?"
		popup.show()
