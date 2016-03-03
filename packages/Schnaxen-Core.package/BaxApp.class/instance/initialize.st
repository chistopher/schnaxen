as yet unclassified
initialize
	
	super initialize.
	self extent: 800@700.
	self color: Color transparent.
	self field: BaxField example1.
	self addMorph: self field.
	self keyBindings: self worldKeyBindings.
	self activeHand newKeyboardFocus: self.
	
