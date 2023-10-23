extends ParallaxBackground


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
@export var speed :int  = 0
@onready var pipe =preload(("res://pipe.tscn"))
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.scroll_base_offset.x -= speed * delta
	
func spawn():
	var wallTemp = pipe.instantiate()
	wallTemp.name = "Pipe"
	add_child((wallTemp))
	


func _on_timer_timeout():
	spawn()
