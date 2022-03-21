extends Panel

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("visibility_changed", self, "on_visibility_changed")

func on_visibility_changed():
	if self.visible == true:
		get_node("Timer").start()
	else:
		get_node("Timer").stop()
