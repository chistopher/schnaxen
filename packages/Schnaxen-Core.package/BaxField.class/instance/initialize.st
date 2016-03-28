initialization
initialize 
				
	super initialize.
	self 
		bounds: BaxApp useableBounds;
		background: (ImageMorph new position: self position);
		addMorph: self background;
		createBaxens;
		bax: (self baxens first position: self position; location: 0@0);
		addMorph: self bax;
		enterRoomAt: (1@1).
	

	self keyBindings removeKey: Character escape.
	self keyBindings add: (Character escape -> [self openSubWindow: self mainMenu]).

		