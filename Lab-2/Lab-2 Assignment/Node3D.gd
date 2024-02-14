extends MeshInstance3D


# Called when the node enters the scene tree for the first time.
func _ready():
	print("starting")
	if true:
		print ("true!")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.z = position.z - 0.1
