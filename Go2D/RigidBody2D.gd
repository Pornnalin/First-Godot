extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.

	

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == 1 and event.pressed:
			self.set_axis_velocity(Vector2(0,-150))
			self.set_angular_velocity(-1)			
			$AnimatedSprite2D.play("Fly")
			print("Left button was clicked at ", event.position)
	


func _on_area_2d_body_entered(body):
	if body.name == "Floor":
		self.queue_free()
		
	if "Wall" in body:		
		self.queue_free()
