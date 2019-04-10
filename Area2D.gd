extends Area2D

var target
var myradius = 250

func _ready():
	var shape = CircleShape2D.new()
	shape.radius = myradius
	$CollisionShape2D.shape = shape
	pass

func _physics_process(delta):
		if target :
			rotation = (target.position - position).angle()
		pass


func _on_Area2D_body_entered(body):
	target = body
	pass # replace with function body


func _on_Area2D_body_exited(body):
	if body == target :
		target = null
	pass # replace with function body
