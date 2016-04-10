initialization
initialize 
				
	super initialize.
	self bounds: BaxApp useableBounds.
	
	self keyBindings removeKey: Character escape.
	self keyBindings add: (Character escape -> [self openSubWindow: self mainMenu]).

		