extends Button


func _ready():
	connect("pressed", self, "on_pressed")

func on_pressed():
	var tabContainer = get_node("/root/Node2D/PanelAction/TabContainer")
	tabContainer.get_node("Europe").init_states()
	tabContainer.get_node("NorthAm").init_states()
	tabContainer.get_node("SouthAm").init_states()
	tabContainer.get_node("Asia").init_states()
	tabContainer.get_node("Africa").init_states()
	tabContainer.get_node("Australia").init_states()
	
	var timer= get_node("/root/Node2D/WorldMap/Timer")
	timer.init()
	timer.show_values()
	timer.start()
	get_parent().get_parent().get_node("Music").stop()
	var music= timer.get_node("Music")
	music.play()
	get_parent().get_parent().hide()
	get_tree().set_input_as_handled()
