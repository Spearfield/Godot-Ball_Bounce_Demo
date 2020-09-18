extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("click"):
		var angle : float = get_angle_to(get_global_mouse_position())
		var direction : Vector2 = Vector2( cos(angle), sin(angle) )
		apply_impulse(Vector2(),direction * 100)
	pass
