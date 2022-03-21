extends Button

enum TUTORIAL_STATE { CONTINENTS, DOMAINS, POLICIES}
var state = TUTORIAL_STATE.CONTINENTS

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("pressed", self, "on_pressed")
	get_parent().get_node("RichTextLabelTutorial").text = "You can choose continents on the upper tabs."
	get_parent().get_node("SpriteContinents").visible = true

func on_pressed():
	if state == TUTORIAL_STATE.CONTINENTS:
		get_parent().get_node("RichTextLabelTutorial").text = "You can choose domains on the lower tabs, per continent."
		state = TUTORIAL_STATE.DOMAINS
		get_parent().get_node("SpriteContinents").visible = false
		get_parent().get_node("SpriteDomains").visible = true
	elif state == TUTORIAL_STATE.DOMAINS:
		get_parent().get_node("RichTextLabelTutorial").text = "Using your income, you can buy upgrades of your policies.\nThere are 3 screws: Substitution, Efficiency, Sufficiency."
		state = TUTORIAL_STATE.POLICIES
		get_parent().get_node("SpriteDomains").visible = false
		get_parent().get_node("SpritePolicies").visible = true
	else:
		get_parent().get_node("RichTextLabelTutorial").text = "You can choose continents on the upper tabs."
		state = TUTORIAL_STATE.CONTINENTS
		get_parent().get_node("SpritePolicies").visible = false
		get_parent().get_node("SpriteContinents").visible = true
		get_parent().hide()
