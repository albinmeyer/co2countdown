extends Button

func _ready():
	connect("pressed", self, "on_pressed")

func on_pressed():
	var timer= get_node("/root/Node2D/WorldMap/Timer")
	timer.start()
	var music= timer.get_node("Music")
	music.play(5)
	get_parent().hide()
