extends Button

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("pressed", self, "on_pressed")

func on_pressed():
	get_parent().hide()
	get_parent().get_parent().get_node("Timer").start()
