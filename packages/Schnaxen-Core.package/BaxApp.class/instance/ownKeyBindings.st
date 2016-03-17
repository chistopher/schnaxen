key bindings
ownKeyBindings
	
	^ Dictionary newFrom: {
	Character space 	-> 	[self openSubWindow: self mainMenu].
	}.