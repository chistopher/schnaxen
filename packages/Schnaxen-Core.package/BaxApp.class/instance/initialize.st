initialization
initialize
	
	super initialize.
	
	self 
		goFullScreen;
		color: Color black;
		createMainMenu.
		
	BaxApp appSize = BaxApp minAppSize 
		ifTrue: [self openSubWindow: self resolutionMenu].
		
	self getFocus.
