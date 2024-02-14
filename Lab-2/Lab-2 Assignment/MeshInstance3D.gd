extends MeshInstance3D
var condition_to_check = true

# Define a signal
signal condition_met

# Called when the node enters the scene tree for the first time.
func _ready():
	print("starting")
	if condition_to_check:
		print("yeehaw!")
		# Emit the signal when condition_to_check is true
		emit_signal("condition_met")
	else:
		print("aw darn!")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	position.z -= 0.07

# Connect the signal in the same script
func _on_condition_met():
	print("Condition met!")
