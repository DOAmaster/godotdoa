extends Panel

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const MySmokeResource = preload("res://player/Player.tscn")

var eventTotal = 100
var eventCount = 0


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
	
	#get parent node and spawn Player on left side of screen
	var myPar = self.get_parent()
	GrabedInstance.position = Vector2(100,1000)
	myPar.add_child(GrabedInstance)
	
	#generate random events on map
	#Get games tile map from parent node
	var myTileMap = myPar.get_node("TileMap");
	#myTileMap.set_cell(20, 16, 0, false, false, false, Vector2(0,0))
	myTileMap.set_cell(7, 16, 23)
	
	#remove panel from tree
	queue_free()
	
	
	#self.add_child(GrabedInstance)
	pass # Replace with function body.
