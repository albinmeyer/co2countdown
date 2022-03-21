extends Button

func _ready():
	connect("pressed", self, "on_pressed")

func on_pressed():
	var timer= get_node("/root/Node2D/WorldMap/Timer")
	timer.stop()
	var music= timer.get_node("Music")
	music.stop()
	var popup= get_node("/root/Node2D/PanelAction") as Panel
	if timer.tutorialtab == true:
		popup.get_node("PopupPanelTutorial").visible = true
		timer.tutorialtab = false
	else:
		popup.get_node("PopupPanelTutorial").visible = false
	popup.show()
