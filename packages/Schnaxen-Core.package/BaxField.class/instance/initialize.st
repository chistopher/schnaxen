initialization
initialize 
				
	super initialize.
	self 
		bounds: BaxApp useableBounds;
		initInfoBar;
		background: (ImageMorph new position: self position);
		addMorph: self background;
		createBaxens;
		bax: (self baxens first position: self position);
		addMorph: self bax;
		enterRoomAt: (1@1).
	
	self keyBindings addAll: self bax ownKeyBindings.


		