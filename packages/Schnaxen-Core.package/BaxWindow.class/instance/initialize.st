initialization
initialize
	
	super initialize.
	self keyBindings: Dictionary new.
	self keyBindings add: (Character escape	-> 	[self currentFrontWindow close]).
	self keyBindings addAll: self ownKeyBindings