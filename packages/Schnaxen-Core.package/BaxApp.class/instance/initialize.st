initialization
initialize
	
	super initialize.
	
	self 
		goFullScreen;
		color: Color black;
		createMainMenu;
		fillMainMenu.
		
	
	BaxApp appSize = BaxApp minAppSize 
		ifTrue: [self openResolutionMenu].
		
	self keyBindings: self mainMenuKeyBindings.
	self getFocus.
