initialization
initialize
	
	super initialize.
	
	self 
		goFullScreen;
		getFocus;
		color: Color black.
	"add background"
	self background: (ImageMorph new
		image: (BaxResources image: 'main' size: BaxApp appSize);
		position: BaxApp useableBounds topLeft). 
	self addMorph: self background.

	"coz app is last window and should not be closed like a bitch"
	self keyBindings removeKey: Character escape.
	
	self openSubWindow: self mainMenu.
	"you dont wanna play in 64@36 so i better ask again"
	BaxApp appSize = BaxApp minAppSize 
		ifTrue: [self openSubWindow: self resolutionMenu].
