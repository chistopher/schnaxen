initialization
createMenu

	self menuBar: BaxMenu new.
	self addMorph: self menuBar.
	self menuBar 
		vertical: false;
		extent: (self extent x @ (10* BaxApp magnification));
		position: self bottomLeft - (0@self menuBar extent y).
	self keyBindings addAll: self menuBar thisKeyBindings.
	