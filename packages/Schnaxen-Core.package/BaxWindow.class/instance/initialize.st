initialization
initialize
	
	super initialize.
	self keyBindings: Dictionary new.
	self keyBindings at: #b put: [self currentFrontWindow close].
	self keyBindings addAll: self ownKeyBindings