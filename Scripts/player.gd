extends Node2D

@onready var rig: RigidBody2D = $RigidBody2D

@export var continuous_torque_strength: float = 10000.0

func _physics_process(delta: float):
	var torque_input: float = 0.0

	if Input.is_action_pressed("ui_left"):
		torque_input -= 1.0
	if Input.is_action_pressed("ui_right"):
		torque_input += 1.0

	if torque_input != 0.0:
		rig.apply_torque(torque_input * continuous_torque_strength)
