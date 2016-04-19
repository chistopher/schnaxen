initialization
initialize

	super initialize.
	self color: Color gray.
	self extent: BaxApp appSize.
	self createMenu.
		
	
	self keyBindings removeKey: #b.
	enemies := OrderedCollection new.
	baxens := OrderedCollection new.
