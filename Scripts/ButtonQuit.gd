extends Button

func _ready():
	connect("pressed", self, "on_pressed")

func on_pressed():
	var worldMap = get_parent()
	var timer = worldMap.get_node("Timer")
	timer.countco2 = -1
