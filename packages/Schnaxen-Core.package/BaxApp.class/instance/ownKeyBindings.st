key bindings
ownKeyBindings
	
	^ Dictionary newFrom: {
	#start	->	[self openSubWindow: self mainMenu].
	}.