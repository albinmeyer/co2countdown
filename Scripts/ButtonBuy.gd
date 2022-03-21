extends Button


var currentAction

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("pressed", self, "on_pressed")

func set_action(textureButton):
	currentAction = textureButton
	if (currentAction == null):
		self.disabled = true
	else:
		self.disabled = false

func on_pressed():
	get_node("Sound").play()
	currentAction.do_action()
	get_parent().hide()
