extends TabContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_ContinentClick(continent):
	if continent == "Europe":
		current_tab = 0
	elif continent == "NorthAmerica":
		current_tab = 1
	elif continent == "SouthAmerica":
		current_tab = 2
	elif continent == "Asia":
		current_tab = 3
	elif continent == "Africa":
		current_tab = 4
	elif continent == "Australia":
		current_tab = 5
