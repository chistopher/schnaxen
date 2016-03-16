menu
startGame

	self mainMenu visible: false.
	
	self field ifNil: [
		self createBaxens.
		self field: BaxField new.
		self field bounds: BaxApp useableBounds.
		self addMorph: self field.
		self initInfoBar].
	self keyBindings: self worldKeyBindings.
	self activateField.
	self openWindows add: self.