extends Panel

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const MySmokeResource = preload("res://player/Player.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Button").connect("pressed", self, "_on_Button_pressed")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	get_node("Label").text ="BRAINS!"
	var GrabedInstance= MySmokeResource.instance()
	#You could now make changes to the new instance if you wanted
	#CurrentEntry.name = "SmokeA"
	#Attach it to the tree
	var myPar = self.get_parent()
	GrabedInstance.position = Vector2(100,0)
	myPar.add_child(GrabedInstance)
	queue_free()
	#self.add_child(GrabedInstance)
	pass # Replace with function body.
