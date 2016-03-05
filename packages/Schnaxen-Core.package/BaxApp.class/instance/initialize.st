initialization
initialize
	
	super initialize.
	self extent: 700@700.
	self color: Color transparent.

	self field: BaxField example1.
	self infoBar: Morph new.

	self addMorph: self field.
	self addMorph: self infoBar.

	self infoBar position: self bounds topRight.
	self infoBar extent: (300@ self extent y).
	self infoBar color: Color black.

	self keyBindings: self worldKeyBindings.
	self activeHand newKeyboardFocus: self.
	
