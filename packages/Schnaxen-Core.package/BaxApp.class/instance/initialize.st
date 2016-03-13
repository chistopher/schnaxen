initialization
initialize
	
	super initialize.
	
	self 
		createBaxens;
		goFullScreen;
		computeAppSize;
		color: Color black.

	self field: BaxField new.
	self addMorph: self field.
	self field position: (self extent - BaxApp appSize) / 2 + self position.
	self field extent: BaxApp appSize.

	self initInfoBar.
	
	self keyBindings: self worldKeyBindings.
	self activeHand newKeyboardFocus: self.
