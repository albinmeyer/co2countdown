extends Sprite


signal continent(name)

# Called when the node enters the scene tree for the first time.
func _ready():
	var node= get_node("/root/Node2D/PanelAction/TabContainer")
# warning-ignore:return_value_discarded
	connect("continent", node, "_on_ContinentClick")


func _input(event):
	if get_parent().get_node("PanelAction").visible == false && get_parent().get_node("PanelStartStop").visible == false && get_node("PopupPanelMiddleGame").visible == false && get_node("PopupPanelAbout").visible == false:
		if event is InputEventMouseButton and !event.pressed:
			var pos = event.position
			if(pos.x > 200 && pos.x < 600 && pos.y > 100 && pos.y < 400):
				emit_signal("continent", "NorthAmerica")
			elif(pos.x > 400 && pos.x < 700 && pos.y > 400 && pos.y < 900):
				emit_signal("continent", "SouthAmerica")
			elif(pos.x > 900 && pos.x < 1200 && pos.y > 100 && pos.y < 300):
				emit_signal("continent", "Europe")
			elif(pos.x > 900 && pos.x < 1300 && pos.y > 300 && pos.y < 800):
				emit_signal("continent", "Africa")
			elif(pos.x > 1300 && pos.x < 1900 && pos.y > 100 && pos.y < 500):
				emit_signal("continent", "Asia")
			elif(pos.x > 1600 && pos.x < 1900 && pos.y > 500 && pos.y < 800):
				emit_signal("continent", "Australia")
			else:
				return
			var timer= get_node("Timer")
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
