initialization
createMenu

	self menuBar: BaxHorizontalMenu new.
	self addMorph: self menuBar.
	self menuBar 
		extent: (self extent x @ 200);
		position: self bottomLeft - (0@self menuBar extent y).
	self keyBindings addAll: self menuBar ownKeyBindings.
	