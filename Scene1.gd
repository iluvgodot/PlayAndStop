extends Panel

var accum = 0
var is_playing = false

func _ready():
	# Called every time the node is added to the scene.

	# Initialization here
	get_node("PlayButton").connect("pressed", self, "_on_play_pressed")
	get_node("PauseButton").connect("pressed", self, "_on_pause_pressed")

func _on_play_pressed():
	get_node("PlayButton").disabled = true
	get_node("PauseButton").disabled = false
	is_playing = true

func _on_pause_pressed():
	get_node("PlayButton").disabled = false
	get_node("PauseButton").disabled = true
	is_playing = false

func _process(delta):
	if is_playing:
		accum += delta
		get_node("Label").text = str(accum)