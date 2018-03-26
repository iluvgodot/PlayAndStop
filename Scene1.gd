extends Panel

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.

	# Initialization here
	get_node("PlayButton").connect("pressed", self, "_on_play_pressed")
	get_node("PauseButton").connect("pressed", self, "_on_pause_pressed")

func _on_play_pressed():
	get_node("PlayButton").disabled = true
	get_node("PauseButton").disabled = false
	
	get_node("Label").text = "Playing"

func _on_pause_pressed():
	get_node("PlayButton").disabled = false
	get_node("PauseButton").disabled = true
	
	get_node("Label").text = "Paused"