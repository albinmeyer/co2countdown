extends TextureButton

enum STATE { ACTIVE, NEXT_POSSIBLE, DISABLED }
enum ECONOMY_SIZE { LARGE = 8, MEDIUM = 4, SMALL = 1}

var state = STATE.DISABLED

# now some variables that can be set by classes inheriting from this class
var PRICE_TO_BUY
var PATH_STATE_ACTIVE
var PATH_STATE_NEXT_POSSIBLE
var PATH_STATE_DISABLED
var DESCRIPTION


var economySize = 1

func _ready():
	connect("pressed", self, "on_pressed")

func _process(delta):
	if (state == STATE.ACTIVE):
		self.texture_normal = load(PATH_STATE_ACTIVE)
		get_parent().color= Color("#1f8413")
	elif (state == STATE.NEXT_POSSIBLE):
		self.texture_normal = load(PATH_STATE_NEXT_POSSIBLE)
		get_parent().color= Color("#1f8413")
	else:
		self.texture_normal = load(PATH_STATE_DISABLED)
		get_parent().color= Color("#797d79")
	if(self.is_hovered()):
		self.set_scale (Vector2 (1.1, 1.1))
	else:
		self.set_scale (Vector2 (1,1))


func get_label_text():
	var labelText = "%s\nPrice is dependent on Sufficiency:\n%d, %d or %d\n\nCosts currently %d Income\n\n" % [DESCRIPTION, (PRICE_TO_BUY * ECONOMY_SIZE.LARGE), (PRICE_TO_BUY * ECONOMY_SIZE.MEDIUM), (PRICE_TO_BUY * ECONOMY_SIZE.SMALL), (PRICE_TO_BUY * economySize)]
	return labelText


func on_pressed():
	var sceneRootNode= get_parent().get_parent().get_parent()
	economySize = sceneRootNode.get_node("Data").getEconomySize()
	var richTextLabel = sceneRootNode.get_node("PopupPanel/RichTextLabelQuestionBuy") as RichTextLabel
	var labelText = get_label_text()
	
	var root = get_tree().get_root()
	var timer = root.get_node("Node2D/WorldMap/Timer")
	var notEnoughBip = timer.totalbip < PRICE_TO_BUY * economySize
	if (state == STATE.NEXT_POSSIBLE):
		if (notEnoughBip):
			labelText = labelText + "Not enough Income available to buy this!"
	else:
		labelText = labelText + "Cannot buy this! Can only buy the next (white) upgrade."
	richTextLabel.text = labelText
	
	var buttonBuy = sceneRootNode.get_node("PopupPanel/ButtonBuy") as Button
	if(state == STATE.NEXT_POSSIBLE && !notEnoughBip):
		buttonBuy.set_action(self)
	else:
		buttonBuy.set_action(null)
	var popup= sceneRootNode.get_node("PopupPanel") as Panel
	popup.get_node("PopupSound").play()
	popup.show()


func do_action():
	var root = get_tree().get_root()
	var timer = root.get_node("Node2D/WorldMap/Timer")
	timer.totalbip = timer.totalbip - PRICE_TO_BUY * economySize
	timer.show_values()
	set_active()


# this method has to be overridden by inheriting classes
func set_active():
	pass
