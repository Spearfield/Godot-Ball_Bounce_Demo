extends RigidBody2D
func _ready():
	pass # Replace with function body.

func _process(delta):
	if Input.is_action_just_pressed("click"):
		var angle : float = get_angle_to(get_global_mouse_position())
		var direction : Vector2 = Vector2( cos(angle), sin(angle) )
		apply_impulse(Vector2(),direction * 500)
	pass
