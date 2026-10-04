// script for general state machines

function State_Machine() constructor {
	state = undefined;
	
	states = {};

	static Update = function () {
		// has our state variable been set to a struct,
		// and is it actually a function? maybe we forgot
		if (is_instanceof(state, State)) {
			if (is_method(state.update)) {
				state.update();
			}
		}
		
		
	}
	
	// A static method which does the updating, so that 
	// any changes to the state machine is done here.
	static AddState = function () {
		if (!is_undefined(states[$ _state.name])) {
			show_debug_message("You've already got a state called {_state.name} in this machine, man.")
		}
		states[$ _state.name] = _state;
		
		if (is_undefined(state)) {
			state = _state;
		}
		return self;
	}
	
	// A static method which changes the state
	static ChangeState = function () {
		if (!is_undefined(states[$ _name])) {
			state = states[$ _name];
		}
		
		else {
			show_debug_message("Bro's trying to change to a non-existent state!");
		}
	}
}

function State(_name) constructor{
	name = _name;
	update = undefined;
	
	static SetUpdate = function (_update_func) {
		update = _update_func;
		return self;
	}
}