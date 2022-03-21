extends Button

enum TUTORIAL_STATE { CONTINENT, CO2, INCOME}
var state = TUTORIAL_STATE.CONTINENT

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("pressed", self, "on_pressed")
	get_parent().get_node("RichTextLabelTutorial").text = "On each continent you see two numbers: A red one for the weekly CO2-emissions, a skyblue one for the weekly income."
	get_parent().get_node("SpriteContinents").visible = true

func on_pressed():
	if state == TUTORIAL_STATE.CONTINENT:
		get_parent().get_node("RichTextLabelTutorial").text = "The CO2 Budget decreases each week, depending on the CO2-emissions from all continents. Dont' let the number drop below 0!"
		state = TUTORIAL_STATE.CO2
		get_parent().get_node("SpriteContinents").visible = false
		get_parent().get_node("SpriteCO2").visible = true
	elif state == TUTORIAL_STATE.CO2:
		get_parent().get_node("RichTextLabelTutorial").text = "The income increases each week. With this money, buy upgrades on policies reducing the CO2 output. Touch a continent or the Action-Button!"
		state = TUTORIAL_STATE.INCOME
		get_parent().get_node("SpriteCO2").visible = false
		get_parent().get_node("SpriteIncome").visible = true
	else:
		get_parent().get_node("RichTextLabelTutorial").text = "On each continent you see two numbers: A red one for the weekly CO2-emissions, a skyblue one for the weekly income."
		state = TUTORIAL_STATE.CONTINENT
		get_parent().get_node("SpriteIncome").visible = false
		get_parent().get_node("SpriteContinents").visible = true
		get_parent().hide()
		get_parent().get_parent().get_node("Timer").start()
