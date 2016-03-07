initialization
initialize
	
	super initialize.
	
	self createBaxens.
	
	self extent: 700@700.
	self color: Color transparent.

	self field: BaxField new.
	self addMorph: self field.

	self initInfoBar.
	
	self keyBindings: self worldKeyBindings.
	self activeHand newKeyboardFocus: self.
