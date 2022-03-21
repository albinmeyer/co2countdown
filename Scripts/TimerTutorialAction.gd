extends Timer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var arrow_move = 0
var down = true
# Called when the node enters the scene tree for the first time.
func _ready():
	connect ("timeout", self, "_on_Timer_timeout")

func _on_Timer_timeout():
	if down:
		arrow_move += 1
		get_parent().get_node("SpriteContinents").position.y += 2
		get_parent().get_node("SpriteDomains").position.y += 2
		get_parent().get_node("SpritePolicies").position.y += 2
		if(arrow_move == 10):
			arrow_move = 0
			down = false
	else:
		arrow_move += 1
		get_parent().get_node("SpriteContinents").position.y -= 2
		get_parent().get_node("SpriteDomains").position.y -= 2
		get_parent().get_node("SpritePolicies").position.y -= 2
		if(arrow_move == 10):
			arrow_move = 0
			down = true
