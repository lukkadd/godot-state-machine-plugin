@tool
extends EditorPlugin


func _enter_tree():
	# Initialization of the plugin goes here.
	# Add the new type with a name, a parent type, a script and an icon.
	add_custom_type("StatePlugin", "Node", preload("state_plugin.gd"), preload("puzzle-star.png"))
	add_custom_type("StateMachine", "StatePlugin", preload("state_machine.gd"), preload("state-machine.png"))
	add_custom_type("State", "StatePlugin", preload("state.gd"), preload("lambda.png"))


func _exit_tree():
	# Clean-up of the plugin goes here.
	# Always remember to remove it from the engine when deactivated.
	remove_custom_type("StatePlugin")
	remove_custom_type("StateMachine")
	remove_custom_type("State")
