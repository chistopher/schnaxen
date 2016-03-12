initialization
initialize
	
	super initialize.
	
	self createBaxens.
	
	self goFullScreen.
	self color: Color white.

	self field: BaxField new.
	self addMorph: self field.
	self field position: self position.

	self initInfoBar.
	
	self keyBindings: self worldKeyBindings.
	self activeHand newKeyboardFocus: self.
