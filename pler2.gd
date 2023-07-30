extends KinematicBody2D


var mon = Vector2()
var speed = 230
var gamp = -240
var gavt = 10

func _process(delta):
	mon = move_and_slide(mon,Vector2.UP)
	pass
func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		mon.x = speed
		$Sprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		mon.x = -speed
		$Sprite.flip_h = true
	else:
		mon.x = 0
	if !is_on_floor():
		mon.y += gavt
	if Input.is_action_pressed("ui_up") and is_on_floor():
		mon.y = gamp
	Void()
	pass
func Void():
	if global_position.y >= 300:
		get_tree().reload_current_scene()
