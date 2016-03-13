menu
startGame

	self mainMenu visible: false.
	
	self createBaxens.
	self field: BaxField new.
	self addMorph: self field.
	self field bounds: BaxApp useableBounds.
	self initInfoBar.
	self keyBindings: self worldKeyBindings.