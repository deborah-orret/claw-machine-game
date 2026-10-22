extends CharacterBody2D

const JUMP_VELOCITY = -1000.0

func add_point():
	Global.score += 1
	print(Global.score)
	
func speedUP ():
	print(Global.SPEED)
	Global.SPEED = 1000.0
	$boostTimer.start()
	
func slowDOWN ():
	print(Global.SPEED)
	Global.SPEED = 500.0

func jumpBoost():
	Global.JUMP = -1500
	print(Global.JUMP)
	$boostTimer.start()
	
func _on_boost_timer_timeout() -> void:
	slowDOWN()
	Global.JUMP = -1000
	print("time up")

	
func isCharacter():
	return true

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * Global.SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, Global.SPEED)

	move_and_slide()
