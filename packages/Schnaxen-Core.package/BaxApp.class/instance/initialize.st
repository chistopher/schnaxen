initialization
initialize
	
	super initialize.
	
	self 
		goFullScreen;
		color: Color black;
		createMainMenu.
	
	"change resolution and set useableBounds"
	BaxApp appSize = BaxApp minAppSize 
		ifTrue: [self openResolutionMenu]
		ifFalse: [self mainMenu bounds: BaxApp useableBounds. self openMainMenu].
		
	self keyBindings: self mainMenuKeyBindings.
	self getFocus.
