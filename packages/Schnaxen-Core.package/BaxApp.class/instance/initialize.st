initialization
initialize
	
	super initialize.
	
	self createBaxens.
	
	self goFullScreen.
	self color: Color black.

	self field: BaxField new.
	self addMorph: self field.
	self field position: (self extent - BaxField fieldSize) / 2 + self position.
	self field extent: BaxField fieldSize.

	self initInfoBar.
	
	self keyBindings: self worldKeyBindings.
	self activeHand newKeyboardFocus: self.
